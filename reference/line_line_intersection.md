# Finding the intersections between 2 polynomials (coefficient in the real nummber) up to degree 3 and plotting the intersections with the functions

Finding the intersections between 2 polynomials (coefficient in the real
nummber) up to degree 3 and plotting the intersections with the
functions

## Usage

``` r
line_line_intersection(a1, a2, a3, a4, b1, b2, b3, b4, interval)
```

## Arguments

- a1:

  A numeric value for the coefficient of x^3 for function 1

- a2:

  A numeric value for the coefficient of x^2 for function 1

- a3:

  A numeric value for the coefficient of x for function 1

- a4:

  A numeric value for the constant coefficient for function 1

- b1:

  A numeric value for the coefficient of x^3 for function 2

- b2:

  A numeric value for the coefficient of x^2 for function 2

- b3:

  A numeric value for the coefficient of x for function 2

- b4:

  A numeric value for the constant coefficient for function 2

- interval:

  A numeric vector for the interested interval in x

## Value

A plot of the functions within the chosen x-interval and the
intersecting points within that range

## Examples

``` r

line_line_intersection(0,1,0,0,0,0,1,0,3)

line_line_intersection(0,0,5,0,0,0,5,0,3)

line_line_intersection(1,1,1,0,0,0,1,0,2)
```
