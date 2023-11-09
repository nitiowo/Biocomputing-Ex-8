# Caroline Daniher 

setwd("~/Desktop/R Biocomputing/Biocomputing-Ex-8")

# Number 1: Write R code that replicates the functionality of the head function
# designate a "head function" that does the same thing as head in bash
# Creating a function that takes in the inputs of "file" and "number_lines". These 
# will be defined when I am actually running the function.
head<-function(file,number_lines){
  print(head_lines<-file[1:number_lines,])
}
# now, test this "head function" with the file iris the number of lines you wish to display
file<-read.csv("iris.csv",header=TRUE)
# for example, if I wanted to use head for iris and get the first 10 rows
head(iris,10)

# Number 2:
# print the last 2 rows in the last 2 columns to the R terminal
col<-ncol(iris)
row<-nrow(iris)
iris[(row-1):row,(col-1):col]
# get the number of observations for each species included in the data set
species<-table(iris$Species)
print(species)
# get rows with Sepal.Width > 3.5
sepal_width<-iris[iris$Sepal.Width>3.5,]
print(sepal_width) 
# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa<-iris[iris$Species=="setosa",] 
write.csv(setosa,file="setosa.csv")
# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica<-iris[iris$Species=="virginica",]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)