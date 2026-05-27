# Finding the roots of degree 1 and 2 polynomials with real number coefficients and 1 variable

Finding the roots of degree 1 and 2 polynomials with real number
coefficients and 1 variable

## Usage

``` r
root_finding(a, b, c)
```

## Arguments

- a:

  A numeric value for the coefficient of x^2

- b:

  A numeric value for the coefficient of x

- c:

  A numeric value for the constant coefficient

## Value

A numeric value of the roots or a message if the polynomial is invalid
or irreducible

## Examples

``` r

root_finding(1,0,-9)
#> [1]  3 -3
root_finding(4,4,1)
#> [1] -0.5
root_finding(0,0,5)
#> [1] NA
root_finding(25,100,1)
#> [1] -0.01002513 -3.98997487
```
