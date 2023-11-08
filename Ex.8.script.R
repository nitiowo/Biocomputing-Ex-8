#Exercise 8 File for Patrick Kuebler

iris<-read.csv("iris.csv")

#Step 1: prints a specified number of lines from a specified file, like the head function in bash
#Change either file_var or lines_var to alter either the file you are printing from or the 
#number of lines you want to print

file_var<-iris
lines_var<-10

file_var[1:lines_var,]


#Step 2: Data analysis of iris.csv file

#prints the last 2 rows of the last 2 columns
rows<-as.numeric(nrow(iris))
cols<-as.numeric(ncol(iris))
iris[c(rows-1):rows,c(cols-1):cols]

#counts the number of observations for each species
table(iris$Species)

#shows the rows where sepal.width is > 3.5
sepal3.5<-iris[iris$Sepal.Width>3.5,]
sepal3.5

#creates a new .csv file with just the setosa data
setosa_rows<-iris[iris$Species=="setosa",]
write.csv(setosa_rows, file="setosa.csv", row.names = FALSE)

#finds the mean, minimum, and maximum petal length for the virginica species
virginica<-iris[iris$Species=="virginica",]
mean_petal_virg<-mean(virginica$Petal.Length)
min_petal_virg<-min(virginica$Petal.Length)
max_petal_virg<-max(virginica$Petal.Length)

mean_petal_virg
min_petal_virg
max_petal_virg
