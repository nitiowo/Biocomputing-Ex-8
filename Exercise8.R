# part 1
# replicate functionality of head - 
file_path <- "file_name.txt"  # replace with desired file path
num_lines <- 10  # replace with any number of desired lines

# read the file
file_content <- readLines(file_path)

# create subset of selected lines
selected_lines <- file_content[1:num_lines]
print(selected_lines)

# part 2
# load iris.csv and do the following:
setwd('/Users/laurenlatimer/Biocomputing/Biocomputing-Ex-8')
iris_data <- read.csv("iris.csv", header=TRUE)

# a. print the last 2 rows in the last 2 columns to the R terminal
print(iris_data[149:150, 4:5])

# b. get the number of observations for each species included in the data set
table(iris_data$Species)

# or
setosa_data <- iris_data[iris_data$Species == 'setosa', ]
setosa_count <- nrow(setosa_data)

versicolor_data <- iris_data[iris_data$Species == 'versicolor', ]
versicolor_count <- nrow(versicolor_data)

virginica_data <- iris_data[iris_data$Species == 'virginica', ]
virginica_count <- nrow(virginica_data)

# c. get rows with Sepal.Width > 3.5
sepal_data <- iris_data[iris_data$Sepal.Width > 3.5, ]

# d. write the data for the species setosa to a comma-delimited file names 'setosa.csv'
write.csv(setosa_data, file="setosa.csv", quote=FALSE, row.names=FALSE)

# e. calculate the mean, minimum, and maximum Petal.Length for observations from virginica
avg_plength <- mean(virginica_data$Petal.Length)
min_plength <- min(virginica_data$Petal.Length)
max_plength <- max(virginica_data$Petal.Length)
