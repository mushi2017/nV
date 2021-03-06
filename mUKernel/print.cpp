#include "common.h"
#include <mU/Number.h>
#include <mU/Kernel.h>
#include <mU/Parser.h>
#include <mU/utils.h>

namespace mU {
//////////////////////////////////////
inline void Print(wchar x, wostream &f)
{
	if(iswprint(x) || iswspace(x))
		f << x;
	else
		f << L"\\:" << std::hex
		<< ((x >> 12) & 0xF)
		<< ((x >> 8) & 0xF)
		<< ((x >> 4) & 0xF)
		<< (x & 0xF);
}

void Print(Var x, wostream &f, size_t y)
{
	static size_t bufsize = 1024;
	static boost::scoped_array<char> buffer(new char[bufsize]);

	switch(Type(x))
	{
	case TYPE(obj):
		((obj_t*)x)->print(f);
		break;
	case TYPE(int):
		{
			int_t::rep_t &rep = CInt(x);
			const size_t req_size = mpz_sizeinbase(rep, 10) + 2;
			if (bufsize < req_size)
			{
				bufsize = req_size;
				buffer.reset(new char[bufsize]);
			}
			f << mpz_get_str(buffer.get(), 10, rep);
		}
		break;
	case TYPE(rat):
		{
			rat_t::rep_t &rep = CRat(x);
			const size_t req_size = mpz_sizeinbase(mpq_numref(rep), 10)
										+ mpz_sizeinbase(mpq_denref(rep), 10)
										+ 3;
			if (bufsize < req_size)
			{
				bufsize = req_size;
				buffer.reset(new char[bufsize]);
			}
			f << mpq_get_str(buffer.get(),10,rep);
		}
		break;
	case TYPE(flt):
		{
			flt_t::rep_t &rep = CFlt(x);
			long exp;
			const size_t n_digits = static_cast<size_t>(LOG_10_2
													* mpf_get_prec(rep));
			const size_t req_size = n_digits + 2;
			if (bufsize < req_size)
			{
				bufsize = req_size;
				buffer.reset(new char[bufsize]);
			}
			const char *const s = mpf_get_str(buffer.get(), &exp, 10,
												n_digits, rep);
			// TODO: maybe we don't need character encoding conversion here.
			wstring t(to_wstring(s, strlen(s)));
			const wchar *buf = t.c_str();
			if(exp == 0)
				f << L"0." << buf;
			else if(exp > 0)
			{
				size_t n = wcslen(buf);
				if(exp <= (int)n)
				{
					if(buf[0] == L'-')
					{
						f.write(buf,exp + 1);
						f << L'.' << buf + exp + 1;
					}
					else
					{
						f.write(buf,exp);
						f << L'.' << buf + exp;
					}
				}
				else
				{
					if(buf[0] == L'-')
						f << buf << wstring(exp + 1 - n,L'0') << L'.';
					else
						f << buf << wstring(exp - n,L'0') << L'.';
				}
			}
			else
			{
				if(buf[0] == L'-')
					f << L"-0." << wstring(-exp,L'0') << buf + 1;
				else
					f << L"0." << wstring(-exp,L'0') << buf;
			}
		}
		break;
	case TYPE(str):
		{
			const wchar *s = CStr(x).c_str();
			size_t n = wcslen(s);
			for(size_t i = 0; i < n; ++i)
				Print(s[i],f);
		}
		break;
	case TYPE(sym):
		{
			var c = Context(x);
			if(c != Context() &&
				std::find(
				ContextPath.top().begin(),
				ContextPath.top().end(),c)
				== ContextPath.top().end())
			{
				const wchar *s = ContextName[c];
				size_t n = wcslen(s);
				for(size_t i = 0; i < n; ++i)
					Print(s[i],f);
			}
			const wchar *s = Name(x);
			size_t n = wcslen(s);
			for(size_t i = 0; i < n; ++i)
				Print(s[i],f);
		}
		break;
	case TYPE(vec):
		{
			vec_t::rep_t &rep = CVec(x);
			f << L'{';
			size_t n = rep.size();
			if(n > 0)
			{
				Print(rep[0],f);
				for(size_t i = 1; i < n; ++i)
				{
					f << L',';
					Print(rep[i],f);
				}
			}
			f << L'}';
		}
		break;
	case TYPE(ex):
		{
			var h = Head(x);
			var b = Body(x);
			size_t n = Size(b);
			if(SymQ(h))
			{
				Var s = h;
				stdext::hash_map<Var,size_t>::const_iterator iter;
				if(n == 0)
				{
					if(h == TAG(Blank))
					{
						f << L'_';
						return;
					}
					else if(h == TAG(BlankSequence))
					{
						f << L"__";
						return;
					}
				}
				else if(n == 1)
				{
					if(h == TAG(Slot))
					{
						f << L'#';
						Print(At(b,0),f);
						return;
					}
					else if(h == TAG(SlotSequence))
					{
						f << L"##";
						Print(At(b,0),f);
						return;
					}
					else if(h == TAG(Blank))
					{
						f << L'_';
						Print(At(b,0),f);
						return;
					}
					else if(h == TAG(BlankSequence))
					{
						f << L"__";
						Print(At(b,0),f);
						return;
					}
					else if(h == TAG(Optional))
					{
						Print(At(b,0),f);
						f << L'.';
						return;
					}
					else
					{
						const parser::oper_t *postfix_op_ptr = parser::lookup_postfix_oper(s);
						if (postfix_op_ptr) 
						{
							const parser::oper_t &op = *postfix_op_ptr;
							if(op.prec < y)
							{
								f << L'(';
								Print(At(b,0),f,op.prec);
								f << op.show;
								f << L')';
							}
							else
							{
								Print(At(b,0),f,op.prec);
								f << op.show;
							}
							return;
						}

						const parser::oper_t *prefix_op_ptr = parser::lookup_prefix_oper(s);
						if (prefix_op_ptr) 
						{
							const parser::oper_t &op = *prefix_op_ptr;
							if(op.prec < y)
							{
								f << L'(';
								f << op.show;
								Print(At(b,0),f,h == TAG(Minus) ? y : op.prec);
								f << L')';
							}
							else
							{
								f << op.show;
								Print(At(b,0),f,h == TAG(Minus) ? y : op.prec);
							}
							return;
						}
					}
				}
				else if(h == TAG(Part))
				{
					Print(At(b,0),f);
					f << L"[[";
					Print(At(b,1),f);
					for(size_t i = 2; i < n; ++i)
					{
						f << L',';
						Print(At(b,i),f);
					}
					f << L"]]";
					return;
				}
				else if(n == 2)
				{
					if(h == TAG(Pattern))
					{
						Print(At(b,0),f);
						if(!ExQ(At(b,1)) ||
							(Head(At(b,1)) != TAG(Blank)
							&& Head(At(b,1)) != TAG(BlankSequence)))
						f << L':';
						Print(At(b,1),f);
						return;
					}
					else if(h == TAG(Property))
					{
						Print(At(b,0),f);
						f << L"::";
						Print(At(b,1),f);
						return;
					}
					const parser::oper_t *infix_op_ptr = parser::lookup_infix_oper(s);
					if (infix_op_ptr) {
						const parser::oper_t &op = *infix_op_ptr;
						if(op.prec < y) f << L'(';
						Print(At(b,0),f,op.rassoc ? op.prec : op.prec + 1);
						if(h == TAG(Plus))
						{
							if(!ExQ(At(b,1),TAG(Minus)))
									f << L'+';
						}
						else if(h == TAG(Times))
						{
							if(Type(At(b,0)) >= TYPE(sym) && Type(At(b,1)) >= TYPE(sym))
								f << L' ';
						}
						else
							f << op.show;
						Print(At(b,1),f,op.rassoc ? op.prec + 1 : op.prec);
						if(op.prec < y) f << L')';
						return;
					}
				}
				else
				{
					const parser::oper_t *infix_op_ptr = parser::lookup_infix_oper(s);
					if (infix_op_ptr) {
						const parser::oper_t &op = *infix_op_ptr;
						if(op.prec < y) f << L'(';
						Print(At(b,0),f,op.prec);
						if(h == TAG(Plus))
						{
							for(size_t i = 1; i < n; ++i)
							{
								if(!ExQ(At(b,i),TAG(Minus)))
									f << L'+';
								Print(At(b,i),f,op.prec);
							}
						}
						else if(h == TAG(Times))
						{
							for(size_t i = 1; i < n; ++i)
							{
								if(Type(At(b,i - 1)) >= TYPE(sym) && Type(At(b,i)) >= TYPE(sym))
									f << L' ';
								Print(At(b,i),f,op.prec);
							}
						}
						else
						{
							for(size_t i = 1; i < n; ++i)
							{
								f << op.show;
								Print(At(b,i),f,op.prec);
							}
						}
						if(op.prec < y) f << L')';
						return;
					}
				}
			}
			else if(ExQ(h,TAG(Derivative)) && Size(Body(h)) == 1)
			{
				var e = At(Body(h),0);
				if(IntQ(e) && Z::Sgn(e) > 0)
				{
					Print(At(b,0),f,
						parser::lookup_postfix_oper(TAG(Differential))->prec);
					f << wstring(Z::UI(e),L'\'');
					return;
				}
			}
			Print(h,f,parser::max_prec());
			f << L'[';
			if(n > 0)
			{
				Print(At(b,0),f);
				for(size_t i = 1; i < n; ++i)
				{
					f << L',';
					Print(At(b,i),f);
				}
			}
			f << L']';
		}
		break;
	}
}
inline void FullPrint(wchar x, wostream &f)
{
	if(x >= 0x0080)
	{
		const wchar *const name = parser::character_name(x);
		if (name)
			f << L"\\[" << name << L']';
		else
		{
			f << L"\\:" << std::hex
			<< ((x >> 12) & 0xF)
			<< ((x >> 8) & 0xF)
			<< ((x >> 4) & 0xF)
			<< (x & 0xF);
		}
	}
	else
		f << x;
}
void FullPrint(Var x, wostream &f)
{
	switch(Type(x))
	{
	case TYPE(obj):
		Print(((obj_t*)x)->normal(), f);
		break;
	case TYPE(int):
	case TYPE(rat):
	case TYPE(flt):
		Print(x,f);
		break;
	case TYPE(str):
		{
			f << L'"';
			const wchar *s = CStr(x).c_str();
			size_t n = wcslen(s);
			for(size_t i = 0; i < n; ++i)
				FullPrint(s[i],f);
			f << L'"';
		}
		break;
	case TYPE(sym):
		{
			var c = Context(x);
			if(c != Context() &&
				std::find(
				ContextPath.top().begin(),
				ContextPath.top().end(),c)
				== ContextPath.top().end())
			{
				const wchar *s = ContextName[c];
				size_t n = wcslen(s);
				for(size_t i = 0; i < n; ++i)
					FullPrint(s[i],f);
			}
			const wchar *s = Name(x);
			size_t n = wcslen(s);
			for(size_t i = 0; i < n; ++i)
				FullPrint(s[i],f);
		}
		break;
	case TYPE(vec):
		{
			vec_t::rep_t &rep = CVec(x);
			f << L"List[";
			size_t n = rep.size();
			if(n > 0)
			{
				FullPrint(rep[0],f);
				for(size_t i = 1; i < n; ++i)
				{
					f << L',';
					FullPrint(rep[i],f);
				}
			}
			f << L']';
		}
		break;
	case TYPE(ex):
		{
			ex_t::rep_t &rep = CEx(x);
			FullPrint(rep.first,f);
			f << L'[';
			size_t n = Size(rep.second);
			if(n > 0)
			{
				FullPrint(At(rep.second,0),f);
				for(size_t i = 1; i < n; ++i)
				{
					f << L',';
					FullPrint(At(rep.second,i),f);
				}
			}
			f << L']';
		}
		break;
	}
}
void Write(wostream &f, Var x)
{
	if(StrQ(x))
	{
		const wchar *s = CStr(x).c_str();
		size_t n = wcslen(s);
		for(size_t i = 0; i < n; ++i)
			FullPrint(s[i],f);
		f << std::endl;
	}
	else if(VecQ(x))
	{
		size_t n = Size(x);
		for(size_t i = 0; i < n; ++i)
			Print(Pretty(At(x,i)),f);
		f << std::endl;
	}
	else
		Println(x,f);
}
//////////////////////////////////////
}
