#Q1
file_name<-"iris5.csv" #File chosen. Adjust as needed
lines<-1 #The number of lines in head. Adjust as needed.
head<-read.csv(file_name) #read the file
head[1:lines,] #run the command as if it was head in bash

#Q2
iris<-read.csv("iris5.csv") #store data as a variable

#Read the last two rows in the last two columns, print to terminal
lastTwo <- tail(iris, 2)[, 4:5]
print(lastTwo)

#Observations per species
obs<-table(iris$Species)
print(obs)

#Rows with sepal width >3.5
sepal<-iris[iris$Sepal.Width > 3.5, ]
print(sepal)

#Put setosa data into a new delimited file
setosa <- iris[iris$Species == "setosa", ]
write.csv(setosa, file = "setosa.csv", row.names = FALSE)

#mean, min, and max for petal length in virginica
virginica <- iris[iris$Species == "virginica", ]
mean <- mean(virginica$Petal.Length)
min <- min(virginica$Petal.Length)
max <- max(virginica$Petal.Length)