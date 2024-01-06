# check if the 'pacman' package is installed, if not, install it
if (!require("pacman")) install.packages("pacman")

# load required packages
pacman::p_load(postcards, rmarkdown)

# load libraries
library(postcards)
library(rmarkdown)

# set the main and subdirectory
mainDir <- getwd()
subDir <- "Rmd"

# create the subdirectory if it doesn't exist
dir.create(file.path(mainDir, "Rmd"))

# put the working directory to the subdirectory
setwd(file.path(mainDir, subDir))

# create a postcard using the 'trestles' template and save it as 'index.Rmd'
postcards::create_postcard(file = "index.Rmd", template = "trestles")

# an error such as '## Error in rmarkdown::draft(file, template, "postcards", create_dir = create_dir, : The file 'index.Rmd' already exists.' could appear if the file named 'index.Rmd' already exists.

# after editing 'index.Rmd', run the lines below.

# put the working directory back to the main directory
setwd(mainDir)

# render 'index.Rmd' to generate the output
rmarkdown::render("Rmd/index.Rmd", output_dir = ".")

# 'index.html' is generated for the homepage.

# finally, display the homepage link
cat("Finally, display the [homepage](https://danymukesha.github.io/).")
