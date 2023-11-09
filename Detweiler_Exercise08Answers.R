# Justin Detweiler's Exercise 08 Answers 
# Question 1
#This code functions like head in bash in that it pulls out 
#however many lines (top-down) from the data set.I define the amount of lines by 
#changing the assigned number, which I chose to be 20
#Setting the Working Directory
setwd("/Users/justin/Desktop/tutorial/Biocomputing-Ex-8")
#Read the File into R- this is the file to return the lines from
irisdata=read.csv("iris.csv")
#Variable Representing the Number of lines to be returned (you can make this number however many lines you want to pull out)
Top_Lines=20
#Using Indexing to get the lines
Iris_Top_20=iris[c(1:Top_Lines),]
#Print Lines To Terminal
Iris_Top_20

# Question 2
#Set Working Directory
setwd("/Users/justin/Desktop/tutorial/Biocomputing-Ex-8")
#Read the File into R
irisdata=read.csv("iris.csv")
#Check Dimensions of Iris
dim(iris)
#Print The Last 2 Rows of Last 2 Columns
irisdata[c(149:150), c(4:5)]
#Number of Rows for Each Species
versicolor=nrow(irisdata[irisdata$Species=="versicolor",])
virginica=nrow(irisdata[irisdata$Species=="virginica",])
setosa=nrow(irisdata[irisdata$Species=="setosa",])
#Rows with Sepal.Width > 3.5
Sepal=irisdata[irisdata$Sepal.Width>3.5,]
#Write Setosa Data into a comma-delimited File
#Make a Setosa File
setosa=irisdata[irisdata$Species=="setosa",]
#Make the Table Comma Delimited
write.csv(setosa, "setosa.csv", row.names=FALSE)
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
#Making the virginica data file
virginica1=irisdata[irisdata$Species=="virginica",]
#Calculating the Mean
mean(virginica1$Petal.Length)
#Finding the Minimum
min(virginica1$Petal.Length)
#Finding the Maximum
max(virginica1$Petal.Length)
