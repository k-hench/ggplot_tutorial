library(tidyverse)
load("hypo_img.rda")

hypo_read_svg <- function(file_path){
  grImport2::readPicture(file_path) %>%
    grImport2::pictureGrob(.) %>%
    grid::gList(.) %>%
    grid::gTree(children = . )
}

hypo_anno_l <- function(species, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf){
  stopifnot(length(species) == 1)
  stopifnot(is.character(species))
  stopifnot(species %in% hypo_img$spec)
  
  nr_species <- which(hypo_img$spec == species)
  
  annotation_custom(hypo_img$l[[nr_species]], xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)
}

hypo_recolor_svg <- function(svg, layer = 1, color = 'darkgray'){
  svg[[4]][[1]][[4]][[1]][[4]][[layer]]$gp$fill <- color
  svg
}
