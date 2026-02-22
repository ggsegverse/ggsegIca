

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegIca <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggseg/ggsegIca/workflows/R-CMD-check/badge.svg)](https://github.com/ggseg/ggsegIca/actions)
[![DOI](https://zenodo.org/badge/417492385.svg)](https://zenodo.org/badge/latestdoi/417492385)
<!-- badges: end -->

This package contains dataset for plotting the ICA atlas for ggseg.

Beckmann, C. F., & Smith, S. M. (2004). Probabilistic independent
component analysis for functional magnetic resonance imaging. IEEE
transactions on medical imaging, 23(2), 137-152.
[IEEE](https://ieeexplore.ieee.org/document/1263605)

To learn how to use these atlases, please look at the documentation for
[ggseg](https://ggseg.github.io/ggseg/)

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegIca")
```

You can install from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ggseg/ggsegIca")
```

## Example

``` r
library(ggsegIca)
library(ggseg)
library(ggplot2)

ggplot() +
  geom_brain(
    atlas = ica(),
    mapping = aes(fill = label),
    position = position_brain(hemi ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = ica()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-2d-plot-1.png" style="width:100.0%" />

Please note that the ‘ggsegIca’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
