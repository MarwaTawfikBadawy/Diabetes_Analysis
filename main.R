library(tidyverse)

## Attaching packages  tidyverse 1.2.1 !!
## ✔ ggplot2 3.1.0 ## ✔ tibble 2.0.1 ## ✔ tidyr 0.8.3 ## ✔ readr 1.3.1
✔ purrr 0.3.2 ✔ dplyr 0.8.0.1 ✔ stringr 1.3.1 ✔ forcats 0.4.0
 ## Warning: package 'tibble' was built under R version 3.5.2
## Warning: package 'tidyr' was built under R version 3.5.2
## Warning: package 'dplyr' was built under R version 3.5.2
## Warning: package 'forcats' was built under R version 3.5.2
## Conflicts  tidyverse_conflicts()  ## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag() masks stats::lag()

Full_Blood = read_tsv("Marwa_Blood.tsv")
## Parsed with column specification:
## cols(
##   Variable = col_character(),
##   Group = col_character(),
##   Value = col_double()
## )
glimpse(Full_Blood)
## Observations: 197
## Variables: 3
## $ Variable <chr> "ALK", "ALK", "ALK", "ALK", "ALK", "ALK", "ALK", "ALK",...
## $ Group    <chr> "AD_Non_DM_High", "AD_Non_DM_High", "AD_Non_DM_High", "...
## $ Value    <dbl> 325, 378, 390, 265, 271, 158, 214, 300, 174, 332, 181, ...

ggplot(Full_Blood) +
geom_boxplot(aes(x = Group, y = Value, fill = Group)) +
facet_wrap (~ Variable, scales = "free_y") +
theme_light(base_size = 12) +
theme(legend.position = "none") +
theme(axis.text.x = element_text(angle = 70, hjust = 1))
          
