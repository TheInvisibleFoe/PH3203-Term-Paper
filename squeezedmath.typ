#import "imports.typ":*
#let squeezed = $ket(alpha comma zeta)$
#let Oad = $hat(a)^dagger$
#let Oa = $hat(a)$
#let Os = $hat(S)(zeta)$
#let Osd = $hat(S)(zeta)^dagger$
#let Od = $hat(D)(alpha)$
#let Odd = $hat(D)(alpha)^dagger$
=== Definition of Squeezed States
Squeezed States are defined as the state obtained by the action of the operator $Os Od$ on the vaccum
number state $ket(0)$
$
ket(alpha comma zeta) = Os Od ket(0)
$
Where the concerned operators are defined as,
$
Od &= e^(-abs(alpha)^2 / 2) e^(alpha Oad) e^(-alpha^* Oa) \
Os &=  e^(1/2 (zeta^*Oa^2 - zeta Oad^2))
$
$Od$ and $Os$ are the translation and the squeeze operator respectively. It can be shown that,
$
Odd Od = Osd Os = 1
$
i.e., both the operators are unitary. This will help us a lot in the following section, where we 
will be looking at the expectations and variances of a few relevant quantities.
=== Variances in Squeezed States
$var(Y_1)$ TODO
=== Mean Photon Number in a Squeezed State
We wish to compute $expval(n)$ for the squeezed state #squeezed

We know that 
$
hat(n) = Oad Oa
$

Now, to compute the epectation of $hat(n)$ in the Squeezed state we have to evaluate the following
expression
$
expval(n) &= braket(0, Osd Odd Oad Oa Os Od, 0) \
          &= braket(0, Osd Odd Oad Od Odd Oa Os Od, 0) && [because Odd Od = 1]\
          &= braket(0, Osd Odd Oad Od Os Osd Odd Oa Os Od, 0) && [because Osd Os = 1]\
$

First, we evaluate the operator $Odd Oa Od$
$
Odd Oa Od &= e^(-abs(alpha)^2)e^(-alpha Oad)e^(-alpha^* Oa) Oa e^(alpha Oad) e^(-alpha^* Oa)\
          &= e^(-abs(alpha)^2)e^(-alpha Oad)e^(-alpha^* Oa) (e^(alpha Oad) Oa + [Oa , e^(alpha Oad)])e^(-alpha^* Oa)\
$

Now let us compute the comutator relation $[Oa, e^(alpha Oad)]$ which is given by,
$
[Oa, e^(alpha Oad)] = sum_(n = 1)^(infinity) frac(alpha^n [Oa, Oad^n], n!)
$

We can easily show by induction that,$[Oa, Oad^n] = n Oad^(n - 1)$. Then the commutator evaluates to,

$
[Oa, e^(alpha Oad)] &= sum_(n = 1)^(infinity) frac(n alpha^n Oad^(n-1), n!)\
                    &= alpha sum_(n = 0)^(infinity) frac((alpha Oad)^(n), n!)\
                    &= alpha e^(alpha Oad)
$

Substituting this commutator relation back into the expression for $Odd Oa Od$ we get,
$
Odd Oa Od &= e^(-abs(alpha)^2)e^(-alpha Oad)e^(-alpha^* Oa) (e^(alpha Oad) Oa + alpha e^(alpha Oad))e^(-alpha^* Oa)\
          &= e^(-abs(alpha)^2)e^(-alpha Oad)e^(-alpha^* Oa) e^(alpha Oad)e^(-alpha^* Oa) (alpha + Oa)\
          &= alpha + Oa
$

Taking the dagger of this equation on both sides we can also see that,
$
Odd Oad Od = alpha^* + Oad
$

Now substituting these expressions for $Odd Oa Od$ and $Odd Oad Od$ into our expression for
$expval(n)$ we get,
$
expval(n) &= braket(0,Osd (Oad + alpha^*) Os Osd (Oa + alpha) Os ,0)\
          &= braket(0,(Osd Oad Os + alpha^*) (Osd Oa Os + alpha) ,0) && [because Osd Os = 1]\
$
So, now we compute $Osd Oa Os$. Let us define $A = frac(1, 2)(zeta Oad^2 - zeta^* Oa^2)$. Then,
$
Osd Oa Os &= e^A Oa e^(-A) \
          &= sum_(n = 0)^(infinity) frac([A, Oa]_n, n!)\
$
where $[A, B]_1 = [A, B]$, $[A, B]_2 = [A, [A, B]]$ and so on. Lets compute $[A, Oa]$

$
[A, Oa] &= -frac(zeta, 2) [Oa, Oad^2] \
        &= -frac(zeta, 2)  2Oad \
        &= -zeta Oad
$
Similarly,
$
[A, Oa]_2 &=[A, [A, Oa]]\
          &= -zeta [A, Oad] \
          &= zeta frac(zeta^* , 2)[Oa^2, Oad]\
          &= abs(zeta)^2 Oa
$
We can see after this, that the results will be of a similar form when $k$ has the same parity. 
It can be shown using induction that,
$
[A, Oa]_n = cases(
              -zeta abs(zeta)^(n - 1) Oad &&"if" n "is odd",
              abs(zeta)^n Oad &&"if" n "is even",
            )
$
Then we can evaluate $Osd Oa Os$ to be,

$
Osd Oa Os &= sum_(n = 0)^infinity frac(1, n!)[A, Oa]_n \
          &= Oa sum_(k = 0)^infinity frac(abs(zeta)^(2k), (2k)!) - Oad sum_(k = 0)^infinity frac(zeta abs(zeta)^(2k), (2k + 1)!)\
          &= Oa sinh(abs(zeta)) - Oad zeta / abs(zeta) sum_(k = 0)^infinity frac(abs(zeta)^(2k + 1), (2k + 1)!)\
          &= Oa sinh(abs(zeta)) - Oad zeta / abs(zeta) sum_(k = 0)^infinity frac(abs(zeta)^(2k + 1), (2k + 1)!)\
          &= Oa sinh(abs(zeta)) - Oad zeta / abs(zeta) cosh(abs(zeta))\
          &= Oa sinh(r) - Oad e^(i theta) cosh(r)

$
Taking the dagger of this relation gives us 
$
Osd Oad Os = Oad sinh(r) - Oa e^(-i theta)cosh(r)
$

Substituting these expressions into the expression for $expval(n)$ we get,
$
expval(n) &= braket(0, (Oad sinh(r) - Oa e^(-i theta)cosh(r) + alpha^*)(Oa sinh(r) - Oad e^(i theta)cosh(r) + alpha),0)\
          &= braket(0,abs(alpha)^2 + Oa Oad sinh^2(r) ,0)\
          &= abs(alpha)^2 + sinh^2(r)
$
Hence for a squeezed state, the mean photon number is given by
$
expval(n) = abs(alpha)^2 + sinh^2(r)
$
