setwd("~/Biocomputing-Ex-8")

# read file
iris_data <- read.csv("iris.csv")

# Question 1: Replicate head function
# Define the file name
file_name <- "iris.csv"
# Define the number of lines to return
num_lines <- 10
# Data frame
data <- read.csv(file_name)
# Use square bracket indexing to subset + print top 10 lines like in bash
print(data[1:num_lines, ])

# Question 2
## Load the data contained in the provided ‘iris.csv’ file
iris_data <- read.csv("iris.csv")
## Print the last 2 rows in the last 2 columns to the R terminal
lastTwo <- tail(iris_data, 2)[, 4:5]
print(lastTwo)
## Get the number of observations for each species included in the data set
observations <- table(iris_data$Species)
print(observations)
## Get rows with Sepal.Width > 3.5
rowsBigSepalWidth <- iris_data[iris_data$Sepal.Width > 3.5, ]
print(rowsBigSepalWidth)
## Write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosaData <- iris_data[iris_data$Species == "setosa", ]
write.csv(setosaData, file = "setosa.csv", row.names = FALSE)
## Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris_data[iris_data$Species == "virginica", ]
meanV <- mean(virginica_data$Petal.Length)
minV <- min(virginica_data$Petal.Length)
maxV <- max(virginica_data$Petal.Length)
cat("Mean:", meanV, ", Min:", minV, ", Max:", maxV )