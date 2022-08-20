#' Tests whether a string contains a multibyte character
#'
#' Indicates whether a string contains a nasty multibyte character that throws an error in functions like tolower()
#'
#' @param string A character vector of length 1.
#'
#' @return TRUE/FALSE depending on whether the string contains a multibyte
#'
#' @author Ben Goehring \email{bengoehr@@umich.edu}
#'
#' @export
#'


contains_multibyte_string <- function(string, 
                                     max_string_length = 256){  
  
  # Initial checks
  if(!is.character(string)) {
    stop("string must be a character.")
  }
  
  if(length(string) != 1) {
    stop("string must be length 1")
  }
  
  # Loop through characters in string and return TRUE if an error is thrown. 
  tryCatch(
    {for (i in 1:max_string_length){
      substr(string,
             i,
             i)
      
      return(FALSE)
    }
    },
    error = function(e) {
      return(TRUE)
    }
  )
}


