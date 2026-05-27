# Applying modular arithmetic to polynomials with coefficients in the real number

Applying modular arithmetic to polynomials with coefficients in the real
number

## Usage

``` r
modular_arithmetic_for_function(f1, m)
```

## Arguments

- f1:

  A numeric vector of the coefficients of terms in the polynomial (in an
  order from the leading to the constant coefficient)

- m:

  A numeric value that the polynomial will be mod out by (modulo base)

## Value

A string of the polynomial modulo m

## Examples

``` r

modular_arithmetic_for_function(c(1,3,4),4)
#> [1] "1*x^2 + 3*x^1 + 0*x^0"
modular_arithmetic_for_function(c(1,3,1,7,5),3)
#> [1] "1*x^4 + 0*x^3 + 1*x^2 + 1*x^1 + 2*x^0"
```
