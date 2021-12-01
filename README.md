
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ntlx

<!-- badges: start -->
<!-- badges: end -->

The goal of ntlx is to collect and process data for the Nasa Task Load
Index assessment

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mncube/ntlx")
```

## Import package and set directory to collect ouput

enterOutputPath will add the outputDir object to your global
environment. This should be the path where you want to store the ntlx
results.

``` r
library(ntlx)
#enterOutputPath(path = getwd())
```

## Data collection

To collect data, open the ntlx Shiny app, fill out the form, and then
click submit.

``` r
#ntlxApp()
```

## Process data

After you finish administering the ntlx to all subjects across all
tasks, you can return your data as a data frame by calling getResults()

``` r
#getResults()
```

Or you can return processed results which contain raw scores, weights,
adjusted scores, and overall weighted workload scores

``` r
#processResults()
```
