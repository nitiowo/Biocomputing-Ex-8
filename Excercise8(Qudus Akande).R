#Excercise 8
# November 10, 2023.

setwd("~/Desktop/Biocomputing")
iris<-read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)
dim(iris)
head(iris)

#Pull out last 2 rows and columns.
row <- nrow(iris)
col <- ncol(iris)
last2 <- iris[(row-1):row, (col-1):col]

#Number of observations for species in the data set.
species <- table(iris$Species)

#Rows with sepal width greater than 3.5
width <- iris[iris$Sepal.Width >3.5, ]

# All setosa data to comma-delimited file 'setosa.csv'
setosa <- 'setosa'
filtered <- iris[iris$species == setosa, ]
write.csv(filtered, '~/Desktop/Biocomputing/filtered.csv', row.names = FALSE)

# Cal mean, min, max of petal.length from all virginica data.
virginica <- 'virginica'
virg_filtered <- iris[iris$species == virginica,]
virg_mean = mean(virg_filtered$Petal.Length)
virg_min = min(virg_filtered$Petal.Length)
virg_max = max(virg_filtered$Petal.Length)
