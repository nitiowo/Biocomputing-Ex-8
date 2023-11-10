setwd("~/Desktop/shell-lesson-data/Biocomputing-Ex-8")

# Problem 1
# Load data from iris.csv to do these steps
iris_data <- read.csv("iris.csv", header = TRUE)

# write a code that replicates the head function in bash
# this script uses example numbers and files
# make a variable for the number of lines to be returned
number_of_rows <- 20
# make a variable that returns the number of lines
head_function <- function(){
  iris_data[1:number_of_rows,]
}
# print the last two rows of the last two columns
head_function()

# Problem 2
# Load data from iris.csv to do these steps
iris_data

# make a variable for the last two columns
last_two_columns <- iris_data[,4:5]
# print the last two rows from the last two columns to the R terminal
last_rowsandcolumns <- tail(last_two_columns, n = 2)

# get the number of observations for each species included in the data set
species_counts <- table(iris$Species)
species_counts

# get rows with Sepal.Width > 3.5
specific_width <- iris[iris$Sepal.Width > 3.5,]
specific_width

# write the data for the species setosa to a comma-delimited file named setosa.csv
setosa_data <- iris[iris$Species == 'setosa', ]
write.csv(setosa_data, 'setosa.csv', row.names = FALSE)

# calculate the mean, minumum and maximum of Petal.Length for observations in viginica
virginica_data <- iris[iris$Species == 'virginica', ]
# calculate the mean
mean_petal_length <- mean(virginica_data$Petal.Length)
mean_petal_length
# calculate the minimum
minimum_petal_length <- min(virginica_data$Petal.Length)
minimum_petal_length
# calculate the maximum
maximum_petal_length <- max(virginica_data$Petal.Length)
maximum_petal_length