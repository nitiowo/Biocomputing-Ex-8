#Biocomputing Tutorial Exercise 8
#Emily Rao

setwd("C://Users/emRao/Biocomputing-Ex-8")

#Question 1
#define variable for file input
file <- read.csv("FILE.csv", header=T)
#example of above using iris.csv
file <- read.csv("iris.csv", header=T)

#define number of lines -- set to 10 because default for bash head function is 10
numberlines <- 10

#print defined number of rows from top by subsetting (leave columns empty)
file[1:numberlines, ]


#Question 2
#read iris dataset
iris <- read.csv("iris.csv", header=T)
iris

#print last 2 rows and columns by subsetting
iris[149:150, 4:5]

#get number of observations for each species using table function
#answer: 50 each
table(iris$Species)

#rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5, ]

#write data for setosa to csv
write.csv(iris[iris$Species=="setosa", ], file = "setosa.csv", row.names=F)
#check file
read.csv("setosa.csv", header=T)

#mean, min, and max of Petal.Length for virginica
#answer: mean = 5.552, min = 4.5, max = 6.9
virginica <- iris[iris$Species == "virginica", ]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
