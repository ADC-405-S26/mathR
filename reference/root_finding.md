# Find roots of polynomials of degree at most 2

Compute the real roots of a polynomial of the form \\ax^2 + bx + c\\
using the quadratic formula. \\k\\ is considered a root of \\f(x)\\ if
\\f(k)=0\\. In mathematics, this is useful for polynomial factorization.
In other settings, one could be interested in learning when the
performance of a graph with this specific formula crosses 0.

## Usage

``` r
root_finding(a, b, c)
```

## Arguments

- a:

  A numeric value for the coefficient of \\x^2\\

- b:

  A numeric value for the coefficient of \\x\\

- c:

  A numeric value for the constant coefficient

## Value

A numeric value of the roots

- If the polynomial has a repeated root, a single numeric value is
  returned.

- If \\a = 0\\, the polynomial is linear (\\f(x) = bx + c\\) and the
  linear root is returned.

- If the polynomial has no real roots or is invalid, `NA` is returned.

## Details

For polynomials with degree 2, the discriminant \\b^2 - 4ac\\ determines
the number of real roots:

- positive discriminant: two distinct real roots

- zero discriminant: one repeated real root

- negative discriminant: no real roots

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
