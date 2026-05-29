# An example dataset for demonstrating the functions in mathR

An example dataset for demonstrating the functions in mathR

## Usage

``` r
example_data
```

## Format

### `example_data`

A data frame with 9 rows and 5 columns:

- subject_id:

  An integer denoting the subject id

- modular:

  The value for m to mod the function of interest by

- maxdeg2_func:

  Functions with a maximum degree of 2

- param_graph:

  Parameters for the line_line_intersection function

- rand_func:

  Random functions with any degree

## Examples

``` r
example_data
#>   subject_id param_graph modular    rand_func maxdeg2_func
#> 1          1           0       1   1, 2, 3, 4      1, 2, 1
#> 2          2           1       2 0, 2, 9,....      0, 2, 9
#> 3          3           0       3 1, 0, -9, -3     1, 0, -9
#> 4          4           0       4     1, -6, 5     1, -6, 5
#> 5          5           0       5 25, 100,....   25, 100, 1
#> 6          6           0       6 1, -1, -1, 2    1, -1, -1
#> 7          7           1       7     2, 0, -5     2, 0, -5
#> 8          8           0       8 0, 1, 0,....      0, 1, 0
#> 9          9           2       9    5, 2, 0.2    5, 2, 0.2

func <- example_data$maxdeg2_func[[1]]
paste0(func[1],"x^2 + ",func[2],"x + ",func[3])
#> [1] "1x^2 + 2x + 1"

root_finding(func[1],func[2],func[3])
#> [1] -1

param <- example_data$param_graph
line_line_intersection(param[1],param[2],param[3],param[4],
                        param[5],param[6],param[7],param[8],param[9])


modular_arithmetic_for_function(example_data$rand_func[[1]],example_data$modular[2])
#> [1] "1*x^3 + 0*x^2 + 1*x^1 + 0*x^0"
```
