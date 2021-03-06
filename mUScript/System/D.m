Begin["System`"]

$Headlist = {Exp, Log, Sin, Cos, Tan, Cot, Sec, ArcCosh, ArcTanh, Csc, ArcSin, ArcCos, ArcTan, ArcCot, ArcSec, ArcCsc, Sinh, Cosh, Tanh, Coth, Sech, Csch, ArcSinh, ArcSech, ArcCsch, ArcTanh}

(*Basic Properties/Formulas/Rules*)
$DC[f_] := x_ -> $D[f[x], x]
$D[a_ f_, x_] := a $D[f, x] /; FreeQ[a, x] && ! FreeQ[f, x]
$D[f_ + g_, x_] := $D[f, x] + $D[g, x]
$D[f_ g_, x_] := $D[f, x] g + f $D[g, x] /; ! FreeQ[f, x] && ! FreeQ[g, x]
$D[f_[g_], x_] := (g /. $DC[f]) $D[g, x] /; ! FreeQ[$Headlist, f] && g =!= x
$D[f_[g_], x_] := $Derivative[1][f][g] $D[g, x] /; FreeQ[$Headlist, f]
$D[f_[g__], x_] := $MultiD[f,g,x] /; Head[g]==List && FreeQ[$Headlist, f]
$D[g_^n_, x_] := n g^(n - 1) $D[g, x] /; FreeQ[n, x]
$D[E^g_, x_] := E^g $D[g, x] /; ! FreeQ[g, x]
$D[a_^g_, x_] := a^g Log[a] $D[g, x] /; FreeQ[a, x] && ! FreeQ[g, x]
$D[g_^h_, x_] := g^h ((h $D[g, x])/g + Log[g] $D[h, x]) /; ! FreeQ[g, x] && ! FreeQ[h, x]

(*Polynomials*)
$D[x_^n_, x_] := n x^(-1 + n) /; NumberQ[n]
$D[x_,x_]:=1
$D[a_, x_] := 0 /; FreeQ[a, x]

(*Exponential/Logarithm Functions*)
$D[a_^x_, x_] := a^x Log[a] /; FreeQ[a, x]
$D[E^x_, x_] := E^x
$D[Exp[x_], x_] := Exp[x]
$D[Log[x_], x_] := 1/x

(*Trig Functions*)
$D[Sin[x_], x_] := Cos[x]
$D[Cos[x_], x_] := -Sin[x]
$D[Tan[x_], x_] := Sec[x]^2 
$D[Cot[x_], x_] := -Csc[x]^2
$D[Sec[x_], x_] := Sec[x] Tan[x]
$D[Csc[x_], x_] := -Cot[x] Csc[x]

(*Inverse Trig Functions*)
$D[ArcSin[x_], x_] := 1/Sqrt[1 - x^2]
$D[ArcCos[x_], x_] := -(1/Sqrt[1 - x^2])
$D[ArcTan[x_], x_] := 1/(1 + x^2)
$D[ArcCot[x_], x_] := -(1/(1 + x^2))
$D[ArcSec[x_], x_] := 1/(Sqrt[1 - 1/x^2] x^2)
$D[ArcCsc[x_], x_] := -(1/(Sqrt[1 - 1/x^2] x^2))

(*Hyberbolic Trig Functions*)
$D[Sinh[x_], x_] := Cosh[x]
$D[Cosh[x_], x_] := Sinh[x]
$D[Tanh[x_], x_] := Sech[x]^2
$D[Coth[x_], x_] := -Csch[x]^2
$D[Sech[x_], x_] := -Sech[x] Tanh[x]
$D[Csch[x_], x_] := -Coth[x] Csch[x]
$D[ArcSinh[x_], x_] := 1/Sqrt[1 + x^2]
$D[ArcSech[x_], x_] := -(1/(x Sqrt[(1 - x)/(1 + x)] (1 + x)))
$D[ArcCsch[x_], x_] := -(1/(Sqrt[1 + 1/x^2] x^2))
$D[ArcTanh[x_], x_] := 1/(1 - x^2)
$D[ArcCosh[x_], x_] := 1/(Sqrt[-1 + x] Sqrt[1 + x])
$D[ArcTanh[x_], x_] := 1/(1 - x^2)

(*Others*)
$D[x_^x_, x_] := x^x (1 + Log[x])

End[]
