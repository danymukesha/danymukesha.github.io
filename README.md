
<!-- README.md is generated from README.Rmd. Please edit that file -->

Short R script used to create this homepage.

Install required packages

``` r
if (!require("pacman")) install.packages("pacman")
## Loading required package: pacman
pacman::p_load(postcards, rmarkdown)
```

``` r
library(postcards)
mainDir <- getwd()
subDir <- "Rmd"
dir.create(file.path(mainDir, "Rmd"))
setwd(file.path(mainDir, subDir))
postcards::create_postcard(file = "index.Rmd", template = "trestles")
```

Edit`index.Rmd`

``` r
setwd(mainDir)
library(rmarkdown)

rmarkdown::render("Rmd/index.Rmd", output_dir = ".")
## 
## 
## processing file: index.Rmd
## output file: index.knit.md
## 
## Output created: index.html
```

Then `index.html` is generated.

Finally displays the [homepage](https://danymukesha.github.io/).
