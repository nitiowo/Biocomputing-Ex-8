#### part 1: replicate head ----

# create a variable for the data file - somefile can be replaced with the
# intended file
file <- "iris.csv"
# read in data
file.csv <- read.csv(file)

# create a variable for the number of rows - 5 can be replaced with the
# intended number of rows
rows <- 5

# select the desired lines
file.csv[1:rows, ]

#### part 2 ----

## print last 2 rows in last 2 columns
# read in data
iris.csv <- read.csv("iris.csv")
iris.csv[149:150, 4:5]

## number of observations for each species
num_setosa <- nrow(iris.csv[iris.csv$Species == "setosa", ])
num_versicolor <- nrow(iris.csv[iris.csv$Species == "versicolor", ])
num_virginica <- nrow(iris.csv[iris.csv$Species == "virginica", ])

## rows with Sepal.Width > 3.5
iris.csv[iris.csv$Sepal.Width > 3.5, ]

## write data for species setosa to species setosa.csv
# filter out only the rows w species setosa
setosa.csv <- iris.csv[iris.csv$Species == "setosa", ]
# save as csv
write.csv(setosa.csv, "setosa.csv")

## calculate mean, min, and max for petal length of virginica
# filter out only the rows w species virginica
iris.virginica <- iris.csv[iris.csv$Species == "virginica", ]
virginica.mean <- mean(iris.virginica$Petal.Length)
virginica.min <- min(iris.virginica$Petal.Length)
virginica.max <- max(iris.virginica$Petal.Length)