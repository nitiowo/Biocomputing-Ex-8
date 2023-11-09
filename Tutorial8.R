rm(list=ls())

getwd()
setwd("/Users/faithschafer/Downloads")
iris <- read.csv("iris.csv", header = TRUE)

##question 1
sortiris = iris[order(iris$Species),]
##since the normal amount for head is 6, I will select the first 6 rows
topten=sortiris[1:6,]
topten

##question 2a
tail(iris[c(4:5)], n=2)

##question 2b
num_setosa = iris[iris$Species=="setosa",]
dim(num_setosa)
num_versicolor = iris[iris$Species=="versicolor",]
dim(num_versicolor)
num_virginica = iris[iris$Species=="virginica",]
dim(num_virginica)
##or to get it all at once, use the function:
table(iris$Species)

##question 2c
iris_width = iris[iris$Sepal.Width > "3.5",]
iris_width

##question 2d
##use the num_setosa variable from above
write.csv(num_setosa,file="setosa.csv", row.names=F)
read.csv("setosa.csv")

##question 2e
##use the num_virginica variable from above
max(num_virginica$Petal.Length)
min(num_virginica$Petal.Length)
mean(num_virginica$Petal.Length)

getwd()

