#Schnabel Biocomputing Exercise 8

setwd("~/Desktop/IntrotoBiocomputing/Biocomputing-Ex-8-main")  

#1. This code should define a variable with the file to return lines from
iris<-read.csv(file="iris.csv",header=TRUE)

#This code should define a variable representing the number of lines (15 used here) to be 
#returned from the top of the indicated file. The code can then print the selected file content 
#to the terminal in R. 
number_lines<-15
top_data<-iris[1:number_lines, ]
top_data

#2. This code will load the data in the iris.csv file 
iris<-read.csv(file="iris.csv",header=TRUE)

#To print the last 2 rows in the last 2 columns into the terminal 
last_two<-iris[149:150,4:5]
last_two

#Create a table to get the number of observations for each species in the data set
num_species<-table(iris$Species)
num_species

#To get the rows with Sepal.Width > 3.5
morethan3.5<-iris[iris$Sepal.Width>3.5, ]
morethan3.5

#To write the data for the species setosa to a comma-delimited file named setosa.csv
setosadata<-iris[iris$Species == 'setosa',]
write.csv(setosadata, file="setosa.csv")

#To calculate mean, minimum, and maximum of Petal.Length for observations from virginica 
virgininca_data<-iris[iris$Species=='virginica', ]
mean(virgininca_data$Petal.Length)
min(virgininca_data$Petal.Length)
max(virgininca_data$Petal.Length)

