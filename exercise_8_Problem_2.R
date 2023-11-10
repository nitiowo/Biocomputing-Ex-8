#Exercise 8
#11-9-2023
#Problem Number 2

#clear previous contents
rm(list=ls())

#read the csv file

data=read.csv(file="iris.csv",header=TRUE)

#part a) determine dimensions of file

dim(data)

#so there are 150 rows and 5 columns
#to get the last 2 rows and columns we use:

data[149:150,4:5]

#part b) get number of observations for each species included in the data set
#determine what the unique species are
unique(data$Species)

#count number of rows have that species name setosa
sum(data$Species == 'setosa')

#count number of rows that have species name versicolor
sum(data$Species == 'versicolor')

#count number of rows that have species name virginica
sum(data$Species == 'virginica')


#part c) get rows with Sepal.Width > 3.5
#print entire row if sepal.width > 3.5

data[(data$Sepal.Width > 3.5),]

#part d) write the data for the species setosa to comma-delimited file named 'setosa.csv'
#first part specifies that we want to put all columns of any row with 'setosa' in it into a newly named file
cat(data[(data$Species == 'setosa'),],file = "setosa.csv",sep =",")

#part e) calculate the mean, min, and max of Petal.Length for observations from virginica
#first print all rows of virginica but only the column "Petal.Length"
data[data$Species == 'virginica',"Petal.Length"]

#now we can find the requested arithmetic components for those values
mean(data[data$Species == 'virginica',"Petal.Length"])
min(data[data$Species == 'virginica',"Petal.Length"])
max(data[data$Species == 'virginica',"Petal.Length"])
