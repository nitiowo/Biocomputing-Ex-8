
iris <- read.csv("~/Desktop/Biocomputing/Exercise 8/iris.csv", header = TRUE, stringsAsFactors = FALSE)

#1. last two rows and columns
row <- nrow(iris)
col <- ncol(iris)
last_two <- iris[(row-1):row, (col-1):col]

#2. the number of ovservations for each species included in the data set
species <- table(iris$Species)

#3. get rows with Sepal.Width > 3.5
LWidth <- iris[iris$Sepal.Width > 3.5, ]

#4. All setosa to comma-delimited file 'setosa.csv'
setosa <- 'setosa'
filtered <- iris[iris$Species == setosa, ]
write.csv(filtered, '~/Desktop/Biocomputing/Exercise 8/filtered.csv', row.names = FALSE)

#5. Calculate the mean, minimun, maximun of Petal.Length for observations from virginica
virginica <- 'virginica'
vir_filtered <- iris[iris$Species == virginica, ]
mean = mean(vir_filtered$Petal.Length)
min = min(vir_filtered$Petal.Length)
max = max(vir_filtered$Petal.Length)
