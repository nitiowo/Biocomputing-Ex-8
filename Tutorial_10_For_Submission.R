#Import data
iris <- read.csv("C:/Users/grace/Desktop/Biocomputing 2023/R/Tutorials/Biocomputing-Ex-8/iris.csv")

#Exercise 1
file = iris
number_of_rows=10
head_function <- print(file[1:number_of_rows,])
#Exercise 2
#Print the last 2 rows in the last 2 columns to the R terminal
dim(iris) #There are 150 rows and 5 columns, so the last two rows are 149 and 150, and the last two columns are 4 and 5
print(iris[149:150,4:5])
#Get the number of observations for each species included in the data set
setosa_number <- nrow(iris[iris$Species=="setosa",])
versicolor_number <- nrow(iris[iris$Species=="versicolor",])
virginica_number <- nrow(iris[iris$Species=="virginica",])
#Get rows with Sepal.Width>3.5
sepalWidthOver3.5 <- iris[iris$Sepal.Width>3.5,]
#Write the data for the species setosa to a comma-delimited file named 'setosa.csv'
setosa_data <- iris[iris$Species=="setosa",]
write.csv(setosa_data,"setosa.csv")
#Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data_petal_length <- iris[iris$Species=="virginica",3]
mean_petal_length <- mean(virginica_data_petal_length)
minimum_petal_length <- min(virginica_data_petal_length)
maximum_petal_length <- max(virginica_data_petal_length)