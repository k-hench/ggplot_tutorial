source("hypoimg_minimal.R")

ggplot() +
  hypo_anno_l("puella")

ggplot() + 
  annotation_custom(hypo_read_svg("logo.c.svg") %>%
                      hypo_recolor_svg(color = "#FB794B"))
