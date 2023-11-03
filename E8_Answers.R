## Czerwiec, Mae
## Biocomputing Exercise 8
## DUE: Friday, Nov. 10, 2023

## Challenge 1: Replicate head function

file=read.csv("iris.csv") #can change to any file name you wish to draw from
numlines=10 #can change to any number you want to return

file[1:numlines,]

## Challenge 2: do a series of things in R

iris=read.csv("iris.csv")
iris[(nrow(iris)-1):(nrow(iris)), (ncol(iris)-1):(ncol(iris))] # prints last 2 rows and last 2 columns

sum(iris$Species=="setosa")
sum(iris$Species=="versicolor")
sum(iris$Species=="virginica") #lines 16, 17, and 18 give number of obs. of each species

iris[iris$Sepal.Width>3.5,] #prints rows with Sepal.Width > 3.5

setosaOnly=iris[iris$Species=="setosa",]
write.csv(setosaOnly, "setosa.csv") #writes data for setosa species to new .csv file

virginicaOnly=iris[iris$Species=="virginica",]
mean(virginicaOnly$Petal.Length)
max(virginicaOnly$Petal.Length)
min(virginicaOnly$Petal.Length) #fulfills final requirement for Part 2
