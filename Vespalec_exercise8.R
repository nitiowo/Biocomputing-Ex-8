#recreating head function using square brackets

#reading in a pretend data frame
df <- read.csv('wages.csv', header=T)
#default number of rows for head function
row_number <- 6
#testing out replacement head function
df[1:row_number,]


#2 reading in data
iris <- read.csv("iris.csv" ,header=T, sep= ",")

# print last 2 rows in last 2 columns
iris[149:150,4:5]

#number observations for each species
table(iris$Species)

#rows with sepal width >3.5
iris[iris$Sepal.Width>3.5,]

#data for species setosa to comma delimited file 'setosa.csv'
setosa <- iris[iris$Species=='setosa',]
write.csv(setosa, file = "setosa.csv", row.names=F)

#mean, min and max petal length for virginica species
virginica <-  iris[iris$Species=='virginica',]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)