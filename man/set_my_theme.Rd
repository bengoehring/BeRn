% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme.R
\name{set_my_theme}
\alias{set_my_theme}
\title{My ggplot theme}
\usage{
set_my_theme(font = "CMU Serif", colors = NULL, text_factor = 11)
}
\arguments{
\item{font}{Name of font for all text elements in plot. See extrafont::fonts() for available fonts. The default is CMU Serif.}

\item{colors}{Color palette to use. Options include UVA, Okabe, and UM colors. The default is to keep ggplot2 defaults.}

\item{text_factor}{Multiplicative factor to make text larger (e.g., for plots in presentations). Defaults to 11.}
}
\value{
Automatically sets the ggplot theme for the session via ggplot2::theme_set. It also returns a list containing the theme's elements.
}
\description{
Sets sensible ggplot default themes.
}
\author{
Ben Goehring \email{bengoehr@umich.edu}
}
