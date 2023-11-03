# 1. R code that replicates the functionality of the head function we used in bash

file_path <- "path/to/your/file.txt"
number_of_lines <- 10

file_content <- readLines(file_path)
selected_lines <- file_content[1:number_of_lines]
cat(selected_lines, sep = "\n")


# 2 Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things

# set working directory
setwd("/Users/pengqiushi/Documents/Biocomputing")
# read in data
iris_data <- read.table(file="iris.csv",header=TRUE,sep=",")

# print the last 2 rows in the last 2 columns to the R terminal
last_2_rows_last_2_cols <- iris_data[(nrow(iris_data)-1):nrow(iris_data), (ncol(iris_data)-1):ncol(iris_data)]
print(last_2_rows_last_2_cols)

# get the number of observations for each species included in the data set
num_setosa <- sum(iris_data["Species"] == "setosa")
num_versicolor <- sum(iris_data["Species"] == "versicolor")
num_virginica <- sum(iris_data["Species"] == "virginica")


# get rows with Sepal.Width > 3.5
sepalwidth_greaterthan3.5 <- iris_data[iris_data["Sepal.Width"] > 3.5,]

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa_data <- iris_data[iris_data["Species"] == "setosa",]
write.table(setosa_data, "setosa.csv", sep = ",", row.names = FALSE)

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris_data[iris_data["Species"] == "virginica",]
virginica_mean <- mean(virginica_data[,"Petal.Length"])
virginica_min <- min(virginica_data[,"Petal.Length"])
virginica_max <- max(virginica_data[,"Petal.Length"])
print(paste0("The mean, minimum, and maximum of Petal.Length for observations from virginica are ", virginica_mean, ", ", virginica_min, ", ", virginica_max, " respectively."))

