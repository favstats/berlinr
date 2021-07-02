
<!-- README.md is generated from README.Rmd. Please edit that file -->

# berlinr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `berlinr` is to translate German into Berlinerisch (German
dialect). `berlinr` is built upon [this tool](http://parallelnetz.de/)
and simply provides an interface to it.

## Installation

You can install the development version of `berlinr` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("favstats/berlinr")
```

## Example

This is a basic example:

``` r
library(berlinr)
## basic example code
```

``` r
get_berlinerisch("Was geht heute noch meine Kerle")
#> [1] "Was jeht heute noch meine Keale"
```

``` r
get_berlinerisch("Ich würde gerne Maultaschen essen. Oder doch vielleicht Spätzle mit Soße.")
#> [1] "Ich würde jerne Maultaschen essen. Oda doch vielleicht Spätzle mit Soße."
```

``` r
get_berlinerisch("Widerrechtlich abgestellte Fahrzeuge werden kostenpflichtig abgeschleppt.")
#> [1] "Widarechtlich abjestellte Fahrzeuje weaden kostenpflichtig abjeschleppt."
```
