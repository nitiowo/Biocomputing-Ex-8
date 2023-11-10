##Question 1
setwd("/Users/izabellalopez/Junior_yr/Biocomputing/Biocomputing-Ex-8")
file_content <- readLines("file.txt") #replace with file name
num_lines <- 10
print(file_content[1:num_lines]) #replace n and m with lines want to read in

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
write.table(setosa, file = "setosa.csv", sep = ",")

#gets mean, max, & min from of only virginica species
virginica <- iris.data[iris.data$Species == "virginica", ]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)

