(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_),x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m+j*k*p)*(A+B*Sin[c+d*x]^k),x] /;
FreeQ[{c,d,A,B,m,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[p+1-q] && 
  (ZeroQ[j-k] || IntegerQ[p]) && p!=-2


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_),x_Symbol] :=
  Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k),x] /;
FreeQ[{c,d,A,B,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && IntegerQ[m] && 
  Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_),x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k),x]] /;
FreeQ[{c,d,A,B,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && IntegerQ[m-1/2] && 
  Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_),x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^j)^(m-p)*(A+B*Sin[c+d*x]^k),x]] /;
FreeQ[{c,d,A,B,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && IntegerQ[p-1/2] && 
  Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_.+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m+j*k*p)*(A+C*Sin[c+d*x]^(2*k)),x] /;
FreeQ[{c,d,A,C,m,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[p+2-r] && 
  (ZeroQ[j-k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Int[(Sin[c+d*x]^k)^(p-m)*(A+C*Sin[c+d*x]^(2*k)),x] /;
FreeQ[{c,d,A,C,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+2-r] && IntegerQ[m] && 
  Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(p-m)*(A+C*Sin[c+d*x]^(2*k)),x]] /;
FreeQ[{c,d,A,C,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+2-r] && IntegerQ[m-1/2] && 
  Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^j)^(m-p)*(A+C*Sin[c+d*x]^(2*k)),x]] /;
FreeQ[{c,d,A,C,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+2-r] && IntegerQ[p-1/2] && 
  Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.+B_.*Sin[c_.+d_.*x_]+C_.*Sin[c_.+d_.*x_]^(-1)),x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-j)*(C+A*Sin[c+d*x]+B*Sin[c+d*x]^2),x] /;
FreeQ[{c,d,A,B,C,m},x] && ZeroQ[j^2-1]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_.+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m+j*k*p)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k)),x] /;
FreeQ[{c,d,A,B,C,m,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[p+1-q] && ZeroQ[p+2-r] && 
  (ZeroQ[j-k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k)),x] /;
FreeQ[{c,d,A,B,C,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && ZeroQ[p+2-r] && 
  IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k)),x]] /;
FreeQ[{c,d,A,B,C,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && ZeroQ[p+2-r] && 
  IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_),x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^j)^(m-p)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k)),x]] /;
FreeQ[{c,d,A,B,C,m,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && ZeroQ[p+2-r] && 
  IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


Int[(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^k)^p*(A+B*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,n,p},x] && ZeroQ[k^2-1] && ZeroQ[p+1-q] && Not[a===0 && b===1]


Int[(A_+B_.*Sin[c_.+d_.*x_]^i_.)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[Sin[c+d*x]^(-k)*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,n},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && Not[a===0 && b===1]


Int[(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^(-k))^(p+1)*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  Not[a===0 && b===1] && p!=-2


Int[(A_.*(Sin[c_.+d_.*x_]^k_.)^p_.+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^k)^p*(A+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,n,p},x] && ZeroQ[k^2-1] && ZeroQ[p+2-r]


Int[(A_+C_.*Sin[c_.+d_.*x_]^i2_)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[Sin[c+d*x]^(-2*k)*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,n},x] && ZeroQ[k^2-1] && ZeroQ[k+i2/2]


Int[(A_.*(Sin[c_.+d_.*x_]^i_.)^p_.+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^(-k))^(p+2)*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+2-r]


Int[(A_.+B_.*Sin[c_.+d_.*x_]^k_.+C_.*Sin[c_.+d_.*x_]^l_.)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[Sin[c+d*x]^(-k)*(C+A*Sin[c+d*x]^k+B*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,n},x] && ZeroQ[k^2-1] && ZeroQ[k+l]


Int[(A_.*(Sin[c_.+d_.*x_]^k_.)^p_.+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^k)^p*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,n,p},x] && ZeroQ[k^2-1] && ZeroQ[p+1-q] && ZeroQ[p+2-r]


Int[(A_.+B_.*Sin[c_.+d_.*x_]^i_.+C_.*Sin[c_.+d_.*x_]^i2_)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[Sin[c+d*x]^(-2*k)*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,n},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[2*i-i2]


Int[(A_.*(Sin[c_.+d_.*x_]^i_.)^p_.+B_.*(Sin[c_.+d_.*x_]^i_.)^q_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^(-k))^(p+2)*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && ZeroQ[p+2-r]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m+j*k*p)*(A+B*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[p+1-q] && 
  (ZeroQ[j-k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && 
  IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && 
  IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^j)^(m-p)*(A+B*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && 
  IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.+B_.*Sin[c_.+d_.*x_]^i_.)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-j*k)*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,m,n},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+i]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-j*k*(p+1))*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+i] && 
  ZeroQ[p+1-q] && (ZeroQ[j+k] || IntegerQ[p]) && p!=-2


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^(-k))^(p-m+1)*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^(-k))^(p-m+1)*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(m-p-1)*(B+A*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_.+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m+j*k*p)*(A+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[p+2-r] && 
  (ZeroQ[j-k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^k)^(p-m)*(A+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+2-r] && 
  IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(p-m)*(A+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+2-r] && 
  IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^k_.)^p_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^j)^(m-p)*(A+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+2-r] && 
  IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.+C_.*Sin[c_.+d_.*x_]^i2_)*(a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-2*j*k)*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,m,n},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+i2/2]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_.+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-j*k*(p+2))*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+i] && 
  ZeroQ[p+2-r] && (ZeroQ[j+k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^(-k))^(p-m+2)*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+2-r] && 
  IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^(-k))^(p-m+2)*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+2-r] && 
  IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*(A_.*(Sin[c_.+d_.*x_]^i_.)^p_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(m-p-2)*(C+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+2-r] && 
  IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.+B_.*Sin[c_.+d_.*x_]^k_.+C_.*Sin[c_.+d_.*x_]^l_.)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-j*k)*(C+A*Sin[c+d*x]^k+B*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,m,n},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+l]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_.+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m+j*k*p)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && (ZeroQ[j-k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(p-m)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^k_.)^p_+B_.*(Sin[c_.+d_.*x_]^k_.)^q_+C_.*(Sin[c_.+d_.*x_]^k_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^j)^(m-p)*(A+B*Sin[c+d*x]^k+C*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[j+k] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*(A_.+B_.*Sin[c_.+d_.*x_]^i_.+C_.*Sin[c_.+d_.*x_]^i2_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-2*j*k)*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,m,n},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+i] && 
  ZeroQ[2*i-i2]


Int[(Sin[c_.+d_.*x_]^j_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^i_.)^p_.+B_.*(Sin[c_.+d_.*x_]^i_.)^q_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^j)^(m-j*k*(p+2))*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[j^2-1] && ZeroQ[k^2-1] && ZeroQ[k+i] && 
  ZeroQ[p+1-q] && ZeroQ[p+2-r] && (ZeroQ[j+k] || IntegerQ[p])


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Int[(Sin[c+d*x]^(-k))^(p-m+2)*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && IntegerQ[m] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^(-k))^(p-m+2)*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && IntegerQ[m-1/2] && Not[IntegerQ[p]]


Int[(Sin[c_.+d_.*x_]^k_.)^m_.*
    (A_.*(Sin[c_.+d_.*x_]^i_.)^p_+B_.*(Sin[c_.+d_.*x_]^i_.)^q_+C_.*(Sin[c_.+d_.*x_]^i_.)^r_)*
    (a_.+b_.*Sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(Sin[c+d*x]^k)^(m-p-2)*(C+B*Sin[c+d*x]^k+A*Sin[c+d*x]^(2*k))*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d,A,B,C,m,n,p},x] && ZeroQ[k^2-1] && ZeroQ[k+i] && ZeroQ[p+1-q] && 
  ZeroQ[p+2-r] && IntegerQ[p-1/2] && Not[IntegerQ[2*m]]


If[ShowSteps,

Int[u_,x_Symbol] :=
  Int[SubstInertSineForTrigOfLinear[u,x],x] /;
SimplifyFlag && FunctionOfTrigOfLinearQ[u,x],

Int[u_,x_Symbol] :=
  Int[SubstInertSineForTrigOfLinear[u,x],x] /;
FunctionOfTrigOfLinearQ[u,x]]


Int[u_,x_Symbol] :=
  Defer[Int[u,x]] /;
RecognizedFunctionOfTrigQ[u,x]
