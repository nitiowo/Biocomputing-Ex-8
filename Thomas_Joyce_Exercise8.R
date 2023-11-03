# Thomas Joyce Exercise 8 Script

# 1. Write R code that replicates the functionality of the head function we used in bash.

head_function <- function(file,num_lines){
  print(file[1:num_lines,])
}

# Test the head_function on iris_data
head_function(iris_data,10)


# 2. Load the data from iris.csv and write R code to do the following things

# Set working directory
setwd("C:/Users/thoma/OneDrive/Documents/NOTRE DAME FALL 2023/Intro to Biocomputing/Exercise 8/Biocomputing-Ex-8")

# Read in the iris.csv file
iris_data <- read.csv("iris.csv",header=TRUE)

# Print the last two rows in the last 2 columns to the R terminal
print(iris_data[149:150,4:5])

# Get the number of observations for each species included in the dataset
print(table(iris_data$Species)) # 50 observations for each species

# get rows with Sepal.Width > 3.5
print(iris_data[iris_data$Sepal.Width>3.5,])

# Write the data for the species setosa to a comma-delimited file named setosa.csv
setosa_data <- iris_data[iris_data$Species=='setosa',]
write.table(setosa_data, "setosa.csv", sep=",", row.names=FALSE, col.names=TRUE)

# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris_data[iris_data$Species=='virginica',]
mean(virginica_data$Petal.Length) # mean = 5.552
min(virginica_data$Petal.Length) # min = 4.5
max(virginica_data$Petal.Length) # max = 6.9


