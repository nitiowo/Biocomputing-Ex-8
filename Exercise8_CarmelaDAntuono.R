#Exercise 8 - Carmela D'Antuono

#set the working directory 
setwd("~/Desktop/Biocomputing-Ex-8")
#read in a csv file 
iris <- read.csv("iris.csv",header=TRUE)

#question 1 
file <- "iris.csv"
  #a variable with the file to return lines from, using iris to test
lineNumber <- 5
  #a variable with the number of lines to be returned from the top
read.csv(file, header = TRUE)[1:lineNumber,]
  

#question 2
iris <- read.csv("iris.csv",header=TRUE)
head(iris) #take a look at the first five rows 
dim(iris) #look at the dimensions of the data frame

  #print last 2 rows in last 2 columns 
iris[149:150,4:5]

  #get number of observations for each species included 
unique(iris$Species) #look at the different species included
dim(iris[iris$Species == "setosa",]) #result = 50 observations
dim(iris[iris$Species == "versicolor",]) #result = 50 observations
dim(iris[iris$Species == "virginica",]) #result = 50 observations

  #get rows with Sepal.Width > 3.5
SepalWidthGreater <- iris[iris$Sepal.Width > 3.5,]
SepalWidthGreater

  #write data for species setosa to comma-deliminated file 
SesotaObs <- iris[iris$Species == "setosa",]
write.csv(SesotaObs, file = "SesotaObs.csv")

  #calculate mean, minimum, and maximum of Petal.Length for virginica obs
VirginicaObs <- iris[iris$Species == "virginica",] #subset for just virginica
VirginicaObs #check the new data frame to ensure previous code worked
max(VirginicaObs$Petal.Length) #max = 6.9
min(VirginicaObs$Petal.Length) #min = 4.5
mean(VirginicaObs$Petal.Length) #mean = 5.552
