# Apply modular arithmetic to polynomials

Apply modular arithmetic to the coefficients of a real polynomial and
return the resulting polynomial expression modulo \\m\\. This concept is
heavily used in abstract algebra to reduce the algebraic structures like
rings and fields, and also in cryptography to restrict polynomials to a
finite field, allowing computers to process math without the
coefficients growing infinitely large.

## Usage

``` r
modular_arithmetic_for_function(f1, m)
```

## Arguments

- f1:

  A numeric vector of the coefficients of terms in the polynomial (in an
  order from the leading to the constant coefficient)

- m:

  A nonzero numeric value that the polynomial will be mod out by (modulo
  base)

## Value

A character string representing the polynomial with coefficients reduced
modulo \\m\\.

## Details

Given a polynomial

\$\$ f(x) = a_nx^n + a\_{n-1}x^{n-1} + \dots + a_1x + a_0, \$\$

the function replaces each coefficient \\a_i\\ with \\a_i \bmod m\\.

## Examples

``` r

modular_arithmetic_for_function(c(1,3,4),4)
#> [1] "1*x^2 + 3*x^1 + 0*x^0"
modular_arithmetic_for_function(c(1,3,1,7,5),3)
#> [1] "1*x^4 + 0*x^3 + 1*x^2 + 1*x^1 + 2*x^0"
```
