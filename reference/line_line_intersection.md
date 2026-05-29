# Plot intersections between two polynomial functions

Compute and plot the intersections between 2 polynomials (coefficient in
the real number) up to degree 3 over a specified interval.

## Usage

``` r
line_line_intersection(a1, a2, a3, a4, b1, b2, b3, b4, interval)
```

## Arguments

- a1:

  A numeric value for the coefficient of \\x^3\\ for function 1

- a2:

  A numeric value for the coefficient of \\x^2\\ for function 1

- a3:

  A numeric value for the coefficient of \\x\\ for function 1

- a4:

  A numeric value for the constant coefficient for function 1

- b1:

  A numeric value for the coefficient of \\x^3\\ for function 2

- b2:

  A numeric value for the coefficient of \\x^2\\ for function 2

- b3:

  A numeric value for the coefficient of \\x\\ for function 2

- b4:

  A numeric value for the constant coefficient for function 2

- interval:

  A numeric vector for the interested interval in \\x\\

## Value

A `ggplot2` object displaying the two functions within the chosen
\\x\\-interval and the coordinates of intersecting points within that
range.

## Details

The first polynomial is defined as

\$\$ f_1(x) = a_1x^3 + a_2x^2 + a_3x + a_4 \$\$

and the second polynomial is defined as

\$\$ f_2(x) = b_1x^3 + b_2x^2 + b_3x + b_4. \$\$

To find the intersections, the function uses the package rootSolve to
numerically determine the roots of \\f_1(x)-f_2(x)\\. In other words,
this operation finds data points at which \\f_1(x)=f_2(x)\\.

## Examples

``` r

line_line_intersection(0,1,0,0,0,0,1,0,3)

line_line_intersection(0,0,5,0,0,0,5,0,3)

line_line_intersection(1,1,1,0,0,0,1,0,2)
```
