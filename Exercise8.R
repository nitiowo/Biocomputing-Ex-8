# setwd("~/Desktop/Biocomputing-Ex-8")

# Load the iris dataset
iris <- read.csv("iris.csv", header=TRUE)

# Create custom function to replicate 'head' functionality
custom_head <- function(file, lineNumber) {
  read.csv(file, header = TRUE)[1:lineNumber, ]
}

# Execute custom head function
custom_head(file = "iris.csv", lineNumber = 5)

# Print the last 2 rows of the last 2 columns
tail(iris, 2)[, (ncol(iris)-1):ncol(iris)]

# Get the number of observations for each species
table(iris$Species)

# Get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5, ]

# Write data for species setosa to a comma-delimited file 
write.csv(iris[iris$Species == "setosa", ], "setosa.csv", row.names = FALSE)

# Calculate stats for Petal.Length of the species virginica
virginica <- iris[iris$Species == "virginica", ]
summary(virginica$Petal.Length)
