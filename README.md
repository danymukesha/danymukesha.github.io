
<!-- README.md is generated from README.Rmd. Please edit that file -->

Short R script used to create this homepage.

``` r
library(postcards)
mainDir <- getwd()
subDir <- "Rmd"
dir.create(file.path(mainDir, "Rmd"))
setwd(file.path(mainDir, subDir))
postcards::create_postcard(file = "index.Rmd", template = "trestles")
## Error in rmarkdown::draft(file, template, "postcards", create_dir = create_dir, : The file 'index.Rmd' already exists.
```

Edit `index.Rmd`

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
