#' My ggplot theme
#'
#' Sets sensible ggplot default themes.
#'
#' @param font Name of font for all text elements in plot. See extrafont::fonts() for available fonts. The default is CMU Serif.
#' @param colors Color palette to use. Options include UVA, Okabe, and UM colors. The default is to keep ggplot2 defaults. 
#' @param type Defaults to paper. If presentation, text size is scaled larger.
#' @return Automatically sets the ggplot theme for the session via ggplot2::theme_set. It also returns a list containing the theme's elements.
#'
#' @author Ben Goehring \email{bengoehr@@umich.edu}
#'
#' @export
#'

set_my_theme <- function(font = "CMU Serif",
                         colors = NULL,
                         type = "paper") {
  
  if(is.null(colors)) {
    print("Retaining default ggplot2 colors.")
    
  } else if(colors == 'uva') {
    in_uva_colors <- c("#232D4B", "#E57200", "#009FDF", "#FDDA24",
                       "#25CAD3", "#62BB46", "#EF3F6B", "#C8CBD2",
                       "#F9DCBF", "#BFE7F7", "#FFF6C8", "#C9F2F4", 
                       "#D8EED1", "#FBCFDA")
    
    options(ggplot2.discrete.colour = in_uva_colors)
    options(ggplot2.discrete.fill = in_uva_colors)
    
  } else if(colors == 'okabe') {
    in_okabe_colors = c("#E69F00", "#56B4E9", "#009E73", 
                        "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
    
    options(ggplot2.discrete.colour = in_okabe_colors)
    options(ggplot2.discrete.fill = in_okabe_colors)
    
  } else if(colors == 'um') {
    in_um_colors = c("#00274C", "#FFCB05", "#9A3324","#D86018", 
                     "#75988d", "#A5A508", "#00B2A9", "#2F65A7",
                     "#702082", "#575294", "#CFC096", "#9B9A6D", 
                     "#989C97", "#655A52", "#131516")

    options(ggplot2.discrete.colour = in_um_colors)
    options(ggplot2.discrete.fill = in_um_colors)
  } else {
    stop("Color palette is unavailable.")
  }
  

  # set multiplicative factor if plots are for presentations
  if(type == 'presentation') {
    in_base_size = 14
  } else if(type == 'paper') {
    in_base_size = 11
  } else {
    stop()
  }
  
  # loadfonts() needs to be called each R session 
  suppressMessages(extrafont::loadfonts())
  

  my_theme <- ggplot2::theme_classic(base_size = in_base_size) +
    ggplot2::theme(
        # Set plot font - - - - - - - - - - - - - - - - - - - - -
        text = ggplot2::element_text(family = font),
        
        
        # Set y grid lines to dark grey - - - - - - - - - - - - - 
        panel.grid.major.y = ggplot2::element_line(colour = "#dedddd"),
        
        
      # Remove tick marks - - - - - - - - - - - - - - - - - - - - 
        axis.line.y = ggplot2::element_blank(),
        
        axis.ticks.y = ggplot2::element_blank(),
        
        
      # Change plot titles - - - - - - - - - - - - - - - - - - - - -
        plot.title = ggplot2::element_text(face = "italic",
                                           hjust = .5),
        
        axis.title.x = ggplot2::element_text(face = "italic"),
        
        axis.title.y = ggplot2::element_text(face = "italic"),
      
      # Faceting - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
        strip.text = ggplot2::element_text(face = "italic",
                                           hjust = .5),
        strip.background = ggplot2::element_blank(),
      
      
      # legend
      legend.position = 'bottom'
        )

  # Set and return theme - - - - - - - - - - - - - - - - - - - - -
  ggplot2::theme_set(my_theme)
  
  my_theme <<- my_theme
}





