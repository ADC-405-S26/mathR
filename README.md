
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mathR

<!-- badges: start -->

<!-- badges: end -->

The goal of mathR is to provide convenience functions for basic
algebraic operations including root finding, line-line intersection, and
modular arithmetic for polynomials. All three functions are applied on
polynomials in the real number domain.

## Installation

You can install the development version of mathR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ADC-405-S26/mathR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
devtools::install_github("ADC-405-S26/mathR")
#> Warning: `install_github()` was deprecated in devtools 2.5.0.
#> ℹ Please use pak::pak("user/repo") instead.
#> This warning is displayed once per session.
#> Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
#> generated.
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo ADC-405-S26/mathR@HEAD
#> 
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/tmp/RtmpKn11Z7/remotesb7a5544489c/ADC-405-S26-mathR-676ba1d/DESCRIPTION’ ... OK
#> * preparing ‘mathR’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘mathR_0.0.0.9000.tar.gz’
#> Warning: invalid uid value replaced by that for user 'nobody'
#> Installing package into '/tmp/RtmpbuTSwA/temp_libpath190216f269f'
#> (as 'lib' is unspecified)

library(mathR)
```

#### example_data table

``` r
example_data <- data.frame(example_data)
```

#### root_finding example

``` r
func <- example_data$maxdeg2_func[[1]]
paste0(func[1],"x^2 + ",func[2],"x + ",func[3])
#> [1] "1x^2 + 2x + 1"

root_finding(func[1],func[2],func[3])
#> [1] -1
```

#### line_line_intersection example

``` r
param <- example_data$param_graph
line_line_intersection(param[1],param[2],param[3],param[4],param[5],param[6],param[7],param[8],param[9])
```

<img src="man/figures/README-unnamed-chunk-4-1.png" alt="" width="100%" style="display: block; margin: auto;" />

#### modular_arithmetic_for_function example

``` r
modular_arithmetic_for_function(example_data$rand_func[[1]],example_data$modular[2])
#> [1] "1*x^3+0*x^2+1*x^1+0*x^0"
```
