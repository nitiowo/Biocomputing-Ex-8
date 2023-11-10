######Mark Jant'z --- Exercise 8

#clear preexisting variables 
rm(list=ls())
# Set working directory
setwd("/Users/mark/Downloads/")

###Question #1: Write a code that replicates the bash head 
##function using a variable as input for the file and a 
##variable as the input for the number of lines

filepath<-"/Users/mark/Downloads/iris.csv" #change to any filepath location
numlines<-6 #change to any number of lines desire to print at the head
#make a data frame with the specified filepath variable 
data<-read.csv(file=filepath,header = TRUE,sep=",")
#print to console the first lines of the data frame as defined by the numlines variable
data[1:numlines,]


###Question #2:Load the data contained in the provided ‘iris.csv’ file 
#and write R code to do the following things

#load the iris data into a variable
iris_data <- read.csv("/Users/mark/Downloads/iris.csv",header = TRUE,sep=",")
numrow<-nrow(iris_data)
numcol<-ncol(iris_data)
# Print the last 2 rows/2 columns
print("last 2 rows/2 columns:")
print(iris_data[(numrow-1):numrow, (numcol-1):numcol])

# Get the number of observations for each species
print("Number of observations for each species:")
sum(iris$Species=="virginica")
sum(iris$Species=="versicolor")
sum(iris$Species=="virginica")

# Get rows with Sepal.Width > 3.5
print("Rows with Sepal.Width > 3.5:")
iris[iris$Sepal.Width>3.5,]

# Write the data for the species setosa to 'setosa.csv'
setosa_data <- iris[iris$Species=="setosa",]
write.csv(setosa_data, "setosa.csv")

# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris[iris$Species=="virginica",]
print("Statistics for Petal.Length of virginica:")
mean(virginica_data$Petal.Length)
min(virginica_data$Petal.Length)
max(virginica_data$Petal.Length)














