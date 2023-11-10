# Execrise 8

#1 
iris <- read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)

lines_ret = 6

topLines <- iris[1:lines_ret,]

print(topLines)

#2 

# print the last 2 rows in the last 2 columns to the R terminal
print(iris[149:150,4:5])

# get the number of observations for each species included in the data set
observations_by_species <- table(iris$Species)
print(observations_by_species)

# get rows with Sepal.Width > 3.5
rows_sepal_width_gt_3.5 <- iris[iris$Sepal.Width > 3.5, ]
print(rows_sepal_width_gt_3.5)

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa_data <- iris[iris$Species == "setosa", ]
write.csv(setosa_data, file = "setosa.csv", row.names = FALSE)

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris[iris$Species == "virginica", ]
mean_petal_length <- mean(virginica_data$Petal.Length)
min_petal_length <- min(virginica_data$Petal.Length)
max_petal_length <- max(virginica_data$Petal.Length)

print(paste("Mean Petal.Length for virginica:", mean_petal_length))
print(paste("Minimum Petal.Length for virginica:", min_petal_length))
print(paste("Maximum Petal.Length for virginica:", max_petal_length))




