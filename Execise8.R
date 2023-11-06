#Daniel Gatewood's submission for Biocomputing Exercise 8



#1: Write a code that replicates the bash head function using a variable 
#as input for the file and a variable as the input for the number of lines

rm(list=ls())

#Variable inputs
FileVar<-"/Users/daniel/Desktop/Biocomputing-Ex-8/iris.csv"
Number<-6

#create a data frame
data<-read.csv(file=FileVar,header = TRUE,sep=",")
#print to console the first lines of the data frame as defined by the Number variable
data[1:Number,]



#2: Load the data in iris.csv and write code to do the following:

#Load the data
iris<-read.csv(file="/Users/daniel/Desktop/Biocomputing-Ex-8/iris.csv",header = TRUE,sep=",")

#1) print the last 2 rows in the last 2 columns to the R terminal
rownum<-nrow(iris)
colnum<-ncol(iris)
iris[(rownum-1):rownum,(colnum-1):colnum]

#2) get the number of observations for each species included in the data set
print("setosa")
nrow(iris[iris$Species=="setosa",])
print("versicolor")
nrow(iris[iris$Species=="versicolor",])
print("virginica")
nrow(iris[iris$Species=="virginica",])

#3) get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]

#4) write the data for the species setosa to a comma-delimited file named ‘setosa.csv’
write.csv(iris[iris$Species=="setosa",],"setosa.csv",row.names=FALSE)

#5) calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica<-iris[iris$Species=="virginica",]
mean(virginica[,3])
max(virginica[,3])
min(virginica[,3])

