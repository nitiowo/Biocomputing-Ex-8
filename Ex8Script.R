#John LeSage
#Biocomputing Exercise 8, 11/9/23

#Setup
setwd("~/Desktop/Exercise_8")
#navigates R to the Exercise_8 directory, where the iris.csv file is stored on my system
iris <- read.table("iris.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
#loads in the iris.csv data into a file R can work with

#Question 1: replicating head function in bash
HeadNum <- 10 #can be defined as any positive value, R rounds down to nearest integer
FiletoUse <- "iris.csv" #can be defined as any .csv file
read.csv(FiletoUse, header=TRUE)[1:HeadNum,]


#Question 2a
dim(iris) #checks how many rows and columns there are
#There are 150 columns and 5 rows according to the dim function
#we want columns 149-150 and rows 4-5
iris[c(149,150), c(4,5)]
#prints the 4th and 5th rows of the 149th and 150th columns

#Question 2b
setosa <- iris[iris$Species=="setosa",]
versicolor <- iris[iris$Species=="versicolor",]
virginica <- iris[iris$Species=="virginica",]
#breaks the larger data set into 3 smaller data sets by species
dim(setosa)
dim(versicolor)
dim(virginica)
#each dataset will have 5 columns as before; the number of rows tell us the number of individuals per species
print("50 observations of each species")

#Question 2c
SepalSort <- iris[iris$Sepal.Width>3.5,]
#pulls out all rows with sepal widths greater than 3.5 
SepalSort #prints the contents of the variable

#Question 2d
write.table(setosa, file="setosa.csv", sep = ",")
#setosa.csv will appear in the Exercise 8 folder

#Question 2e
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)





