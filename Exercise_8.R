##Question 1
file_content <- readLines("file name") #replace with file name
file_content[n:m] #replace n and m with lines want to read in


##Question 2
#setwd() set working directory
iris.data <- read.csv("iris.csv")

#Last two rows in the last two columns
iris.data[149:150, 4:5]

#number of observations for each species
table(iris.data$Species)

#rows with Sepal.Width greater than 3.5
iris.data[iris.data$Sepal.Width > 3.5, ]

setosa <- iris.data[iris.data$Species == "setosa", ]
write.table(setosa, file = "setosa.txt", sep = ",")

#gets mean, max, & min from of only virginica species
virginica <- iris.data[iris.data$Species == "virginica", ]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)

