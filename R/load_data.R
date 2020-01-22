setwd("/Users/Ben/Box Sync/study/BeRn/R")

load_699 <- function() {
  data <- list.files("../data")
  
  purrr::walk(data, ~load(stringr::str_c("data/",.)))
}

load_699()