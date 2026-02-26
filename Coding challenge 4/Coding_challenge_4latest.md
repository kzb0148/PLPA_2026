## 1. 4 pts. Explain the following

\###a. YAML header - It is the section at the top of R Markdown file. We
can modify the settings such as the output document type, author and
date.The output will render the way it is given when knitting.

\###b. Literate programming - It is the approcah where code, figures,
tables the explainations for it are in the same document.It makes it
easy for reader to repeat the same analysis.

\###Take the code you wrote for coding challenge 3, question 5, and
incorporate it into your R markdown file. Some of you have already been
doing this, which is great! Your final R markdown file should have the
following elements.

\###a. At the top of the document, make a clickable link to the
manuscript where these data are published. The link is here:  
Noel, Z.A., Roze, L.V., Breunig, M., Trail, F. 2022. Endophytic fungi as
promising biocontrol agent to protect wheat from Fusarium graminearum
head blight. Plant Disease. <https://doi.org/10.1094/PDIS-06-21-1253-RE>

\###b. Read the data using a relative file path with na.strings option
set to “na”. This means you need to put the Mycotoxin.csv file we have
used for the past two weeks into your directory, which git tracks.

``` r
myco <- read.csv("MycotoxinData.csv",na.strings = "na")
```

\###c. Make a separate code chunk for the figures plotting the DON data,
15ADON, and Seedmass, and one for the three combined using ggarrange

``` r
library(ggplot2)
library(ggpubr)

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73",
                "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
```

``` r
DON_plot <- ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot(outliers = T, outlier.shape = 15) +
  ylab("DON (ppm)") +
  xlab("") +
  geom_jitter(pch = 21,
              position = position_jitterdodge(),
              color = "black",
              alpha = 0.6) +
  scale_fill_manual(values = c(cbbPalette[[3]], cbbPalette[[4]])) +
  theme_classic() +
  facet_wrap(~Cultivar)

DON_plot
```

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding_challenge_4latest_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->
DON figure

``` r
DON_15 <- ggplot(myco, aes(x = Treatment, y = X15ADON, fill = Cultivar)) +
  geom_boxplot(outliers = F) +
  ylab("15ADON (ppm)") +
  xlab("") +
  geom_jitter(pch = 21,
              position = position_jitterdodge(),
              color = "black",
              alpha = 0.6) +
  scale_fill_manual(values = c(cbbPalette[[3]], cbbPalette[[4]])) +
  theme_classic() +
  facet_wrap(~Cultivar)

DON_15
```

    ## Warning: Removed 10 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 10 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding_challenge_4latest_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->
15A DON

``` r
seedmass <- ggplot(myco, aes(x = Treatment, y = MassperSeed_mg, fill = Cultivar)) +
  geom_boxplot(outliers = F) +
  ylab("Seed Mass (mg)") +
  xlab("") +
  geom_jitter(pch = 21,
              position = position_jitterdodge(),
              color = "black",
              alpha = 0.6) +
  scale_fill_manual(values = c(cbbPalette[[3]], cbbPalette[[4]])) +
  theme_classic() +
  facet_wrap(~Cultivar)

seedmass
```

    ## Warning: Removed 2 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 2 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding_challenge_4latest_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->
Seedmass

``` r
stats_donplot <- DON_plot +
  geom_pwc(aes(group = Treatment),
           method = "t_test",
           label = "{p.adj.format}{p.adj.signif}")

stats_DON_15 <- DON_15 +
  geom_pwc(aes(group = Treatment),
           method = "t_test",
           label = "{p.adj.format}{p.adj.signif}")

stats_seedmass <- seedmass +
  geom_pwc(aes(group = Treatment),
           method = "t_test",
           label = "{p.adj.format}{p.adj.signif}")
```

``` r
ggarrange(stats_donplot,
          stats_DON_15,
          stats_seedmass,
          labels = c("A", "B", "C"),
          ncol = 3,
          nrow = 1,
          common.legend = TRUE)
```

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_pwc()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_pwc()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 10 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 10 rows containing non-finite outside the scale range
    ## (`stat_pwc()`).

    ## Warning: Removed 10 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 2 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 2 rows containing non-finite outside the scale range
    ## (`stat_pwc()`).

    ## Warning: Removed 2 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding_challenge_4latest_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->
combine them all together
