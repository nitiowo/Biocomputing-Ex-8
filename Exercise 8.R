#Exercise 8
#Question 1 - Replicating the function of head
head_replicate <- function(file,num_lines){
print(file[1:num_lines,])
}
#Set working directory to where the iris data set is located
setwd("/Users/jsobo/OneDrive/Documents/Intro to Biocomputing/Biocomputing-Ex-8/")
#Print first five rows of data set using the head replicate 
head_replicate(iris,5)

#Question 2
#Load the data in 'iris.csv' file
irisEx8 <- read.csv('iris.csv', header=TRUE)

#a) Print last 2 rows and columns to the R terminal
Last_rows_colums <-(irisEx8[149:150,4:5])
print(Last_rows_colums)

#b)number of observation for each species include in the data set
Observ_Species <- table(irisEx8$Species)
print(Observ_Species)

#c) Rows with Sepal.Width > 3.5
Sepal.Width_Greater_3.5 <- irisEx8[irisEx8$Sepal.Width > 3.5,]
print(Sepal.Width_Greater_3.5)

#d)comma-delimited data for the species setosa
write.csv(irisEx8[irisEx8$Species == 'setosa',], "setosa.csv", row.names = FALSE)

#e)mean, minimum and maximum of Petal.Length for observations form virginica
Virginica_Data <- irisEx8[irisEx8$Species == "virginica",]
mean(Virginica_Data$Petal.Length)
min(Virginica_Data$Petal.Length)
max(Virginica_Data$Petal.Length)
