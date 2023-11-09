#1 - Replicate head function

# Identify file to return lines from
file <- read.csv("file.csv", header=TRUE)

# Make variable indicating lines to be returned
head <- 1:10

# Print selected lines of file by subsetting the file
print(file[head,])


#2 - Manipulate Iris.csv

# Load the iris dataset from the 'iris.csv' file
iris <- read.csv("iris.csv", header= TRUE, sep = ',' , stringsAsFactor= FALSE)

# Print the last 2 rows in the last 2 columns to the R terminal
(iris[(nrow(iris) - 1):(nrow(iris)), (ncol(iris) - 1):(ncol(iris))])

# Get the number of observations for each species included in the data set
table(iris$Species)

# Get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5,]

# Write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa_data <- iris[iris$Species == "setosa",]
write.csv(setosa_data, file = "setosa.csv", row.names = FALSE)

# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris[iris$Species == "virginica",]
mean_petal_length <- mean(virginica_data$Petal.Length)
min_petal_length <- min(virginica_data$Petal.Length)
max_petal_length <- max(virginica_data$Petal.Length)