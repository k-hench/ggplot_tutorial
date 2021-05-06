

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

Check the hamlet functions and data:


```r
ggplot() +
  hypo_anno_l("puella")
```

<img src="figure/test1-1.png" title="plot of chunk test1" alt="plot of chunk test1" style="display: block; margin: auto;" />

Check the import functions:


```r
ggplot() +
  annotation_custom(hypo_read_svg("logo.c.svg") %>% 
                      hypo_recolor_svg(color = "#FB794B"))
```

<img src="figure/test2-1.png" title="plot of chunk test1" alt="plot of chunk test2" style="display: block; margin: auto;" />

If those two plots work you should be set :)


---
