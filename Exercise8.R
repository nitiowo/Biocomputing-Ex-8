# Exercise 8
# 11/3/2023

#1 Replicating bash's head function
##define a file
file <- wages
##number of lines to be sampled is defined as "x"
x <- 8
##assign variable x to a vector named "samplinglines"
samplinglines <- 1:x
##apply the samplinglines vector to subset the given file
file[samplinglines,]

#2 Load data in iris.csv and execute the following tasks
iris <- read.csv('iris.csv', header=TRUE)

##print the last two rows in the last two columns
###find nrow of the dataset first
nrow(iris)
iris[149:150,3:4]

##get the number of observations for each species included in the data set
unique(iris$Species)
setosa <- iris[iris$Species == 'setosa',]
versicolor <- iris[iris$Species == 'versicolor',]
virginica <- iris[iris$Species == 'virginica',]
nrow(setosa)
nrow(versicolor)
nrow(virginica)

##get rows with Sepal.Width>3.5
largesepalwidth <- iris[iris$Sepal.Width>3.5,]

##write data for the species setosa to a comma delim file 'setosa.csv'
write.csv(setosa, "setosa.csv")

##calc mean, min, max of Petal.Length for observations from virginica
vipetlengmean <- mean(virginica$Petal.Length)
vipetlengmin <- min(virginica$Petal.Length)
vipetlengmax <- max(virginica$Petal.Length)
