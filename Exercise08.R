#Problem 1: writing R code that replaces the head function in bash

#defining a variable to return lines from, here I use iris.csv
file<-read.csv("iris.csv")
#defining a variable representing the number of lines to return, here I use ten
numberoflines<-1:10
#making an R code to replace the head function
R_head<-file[numberoflines,]
print(R_head)

#Problem 2: Loading the iris.csv file and writing R code to accomplish the following:

#loading the iris.csv file
setwd("/Users/nicholasbuhay/Desktop/Biocomputing/Exercise 8/Biocomputing-Ex-8/")
irisdata<-read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)
#print the last two rows in the last two columns
print(irisdata[149:150,4:5])

#get the number of observations for each species included in the data set
numberofobservations<-table(irisdata$Species)
print(numberofobservations)

#get rows with Sepal.Width > 3.5
widerthan3.5<-subset(irisdata, Sepal.Width>3.5)
print(widerthan3.5)

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosas<-subset(irisdata, Species == "setosa")
write.csv(setosas,file ="setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginicas<-subset(irisdata, Species == "virginica")
petallengthdata<-virginicas[,3]
#mean
print(mean(petallengthdata))
#min
print(min(petallengthdata))
#max
print(max(petallengthdata))
