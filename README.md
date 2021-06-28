
<!-- README.md is generated from README.Rmd. Please edit that file -->

# EUROCONTROL Publication

<!-- badges: start -->
<!-- badges: end -->

The `ectrldocs` package creates and setups a EUROCONTROL publication.

From RStudio IDE you can simply select the relevant template from the R
Markdown templates:

![R Markdown template
selection](./man/figures/README-template-selection.png)

**NOTE**: Once you have defined the name of the directory where your
document will reside, say `cucu`, please make sure to rename `cucu.Rmd`
to `index.Rmd`.

Or you can execute the following:

``` r
> library(ectrldocs)
> create_ectrl_pub(dirname = "~/cucu")
```

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("euctrl-pru/ectrldocs")
```
