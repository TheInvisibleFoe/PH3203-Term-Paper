
#import "@preview/physica:0.9.5": *
#let nonum(eq) = math.equation(block: true, numbering: none, eq) 
#show math.equation.where(block: true): eq => {
  block(width: 100%, inset: 0pt, align(center, eq))
}
To check for squeezed states we are interested in the second order correlation function. 
The second order correlation function, with parameters $x_1,x_2$ is given by
$ g^(2)(x_1,x_2) &= (G^((2))(x_1,x_2,x_1,x_2))/ (G^((1))(x_1,x_1) G^((1))(x_2,x_2)) \
            & = expval(bold(E)^-(x_1) bold(E)^-(x_2) bold(E)^+(x_1) bold(E)^+(x_2)) / (G^((1))(x_1,x_1) G^((1))(x_2,x_2)) \
$

We note that $bold(E)^+$ is an anhilation operator which reduces photon number and 
$bold(E)^-$ is a creation operator which increases photon number. So we
can write $N_E = bold(E)^-bold(E)^+$ is a number operator which counts the number of photons.
If the electric fields are classical , the number $N_E$ is a representation of the intensity 
of the light. So we can write the second order correlation function as
$ g^(2)(x_1,x_2) = expval(:N_E(x_1) N_E(x_2):) / (expval(N_(E(x_1))) expval(N_(E(x_2)))) $
where, $:X:$ represents the normal ordering of the operator $X$. The normal 
ordering of an operator is defined as the ordering of the operators such that all the
creation operators are to the left of the annihilation operators.

For example, for an operator $M = a^dagger a b^dagger b$, the normally ordered operator is
$ :M: = a^dagger b^dagger a b $.

Here, we consider time $t_1 = t$ and $ t_2 = t + tau$, and consider that we have
stationary fields. So we can write the second order correlation function  for 
$t_1 = 0, t_2 = tau$ as
$ g^(2)(tau) = g^(2)(0,tau) = expval(:N_E(0) N_E(tau):) / (expval(N_(E(0))) expval(N_(E(tau)))) $

Claim: For coherent states of light, $ g^(2)(0) = 1 $.

Proof: We see that the coherent states are defined as the eigenstates of the annihilation operator $a = E^+$, where fix the electric field in some polarization direction. So we can write
$ a ket(alpha) = alpha ket(alpha) $ where $alpha$ is a complex number. 
We can now calculate 
$ g^2(0)& =  expval(:N_E(x,0):)/expval(N_E(x,0))^2  
        quad =  expval(:a^dagger a a^dagger a:)/expval(a^dagger a)^2 \
        & =  expval(a^dagger a^dagger a a)/expval(a^dagger a)^2 
        quad  =  (bra(alpha) a^dagger a^dagger a a ket(alpha))/(|alpha|^2) \
        & =  (|alpha|^2) /(|alpha|^2) = 1\
        $