#' My ggplot theme
#'
#' Sets sensible ggplot default themes.
#'
#' @param font Name of font for all text elements in plot. See extrafont::fonts() for available fonts. The default is CMU Serif.
#'
#' @return Automatically sets the ggplot theme for the session via ggplot2::theme_set. It also returns a list containing the theme's elements.
#'
#' @author Ben Goehring \email{bengoehr@@umich.edu}
#'
#' @export
#'

set_my_theme <- function(font = "CMU Serif") {
  
  # loadfonts() needs to be called each R session 
  extrafont::loadfonts()
  
  
  my_theme <- ggplot2::theme_classic() +
    ggplot2::theme(
        # Set plot font - - - - - - - - - - - - - - - - - - - - -
        text = ggplot2::element_text(family = font),
        
        
        # Set y grid lines to dark grey - - - - - - - - - - - - - 
        panel.grid.major.y = ggplot2::element_line(colour = "#dedddd"),
        
        
      # Remove tick marks - - - - - - - - - - - - - - - - - - - - 
        axis.line.y = ggplot2::element_blank(),
        
        axis.ticks.y = ggplot2::element_blank(),
        
        
      # Change faces of plot titles - - - - - - - - - - - - - - - 
        plot.title = ggplot2::element_text(face = "bold"),
        
        axis.title.x = ggplot2::element_text(face = "italic"),
        
        axis.title.y = ggplot2::element_text(face = "italic")
        )

  ggplot2::theme_set(my_theme)
}




