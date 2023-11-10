iris_data = read.csv("iris.csv")

cat("The last 2 rows in the last 2 columns are:\n")
print(iris_data[(nrow(iris_data)-2):nrow(iris_data), ((ncol(iris_data))-2):ncol(iris_data)])
cat("\n")

cat("The number of observations for each species included in the data set:\n")
print(table(iris_data$Species))
cat("\n")

cat("Rows with Sepal.Width > 3.5:\n")
print(iris_data[iris_data$Sepal.Width>3.5,])
cat("\n")

cat("Writing the data for the species setosa to a comma-delimited file names ‘setosa.csv’ ...\n")
write.csv(iris_data[iris_data$Species=="setosa",], "setosa.csv")
cat("\n")

cat("Some summary statistics for Petal.Length for observations from virginica:\n")
cat(paste0("Mean: ", mean(iris_data[iris_data$Species=="virginica",]$Petal.Length)), "\n")
cat(paste0("Maximum: ", max(iris_data[iris_data$Species=="virginica",]$Petal.Length)), "\n")
cat(paste0("Minimum: ", min(iris_data[iris_data$Species=="virginica",]$Petal.Length)), "\n")