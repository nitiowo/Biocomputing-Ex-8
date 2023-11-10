# Removing any pre-existing environment variables
rm(list=ls())
# Set working directory
setwd("C:/Users/student/Desktop/Notre Dame/Fall 23/Biocomp")

# Question 1
## Creating a variable with the file

### headR is a function that will allow the user to select the file, and then returns
### the number of lines inputted by the user, similar to bash's head function
### usage example: headR(10) will return the top 10 lines of the selected (tabular) file
headR <- function(numoflines){
  # selecting and accessing the tabular file
  filename <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE)
  # indexing based on the input value
  n <- as.numeric(substitute(numoflines))
  
  return(filename[1:n,])
}
  
  

# Question 2
## Loading data
iris <- read.csv("iris.csv")
#### Print last 2 rows in the last 2 columns
tail(iris[,c(4,5)], 2)
#### Number of observations for each species in dataset
table(iris$Species)
#### Rows where Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]
#### Species setosa to a common-delimited file named "setosa.csv"
setosa <- iris[iris$Species=="setosa",]
write.csv(setosa, 
          "C:/Users/student/Desktop/Notre Dame/Fall 23/Biocomp/Exercise8",
          sep=",")
#### Mean, min, max of petal length from virginica
virginica <- iris[iris$Species=="virginica",]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)