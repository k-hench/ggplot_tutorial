

# Support Repo for {ggplot2} tutorial

This is for the code-alongers that had troubble installing {hypoimg}.
It contains the specific data and functions of the package that are used in the tutorial (so you can load those without installing the package).

You need to have the {tidyverse} and {grImport2} installed though:


```r
install.packages("grImport2")
```

Then instead of calling `library(hypoimg)`, you can load this small script provided here:


```r
source("hypoimg_minimal.R")
```

Here are two quick tests to see if it loaded the data correctly:


```r
ggplot() +
  hypo_anno_l("puella")
```

<img src="figure/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />



```r
ggplot() + 
  annotation_custom(hypo_read_svg("logo.c.svg") %>%
                      hypo_recolor_svg(color = "#FB794B"))
```

