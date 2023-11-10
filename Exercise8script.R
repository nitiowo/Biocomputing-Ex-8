#This is to replicate the functionality of "head" seen in bash
#Change file_variable to change the file you are printing from
#Change lines_variable to change the number of lines
iris<-read.csv("iris.csv")

file_variable<-iris
lines_variable<-10
file_variable[1:lines_variable,]

#This is for part2 with the iris.csv data
#PartA: print the last 2 rows with the last 2 columns
lastrows=tail(iris, 2)
lastcolumns=lastrows[,4:5]
print(lastcolumns)

#PartB: get number of observation for each species
table(iris$Species)

SetosaStuff=subset(iris, Species== "setosa")
SetosaObserv=dim(SetosaStuff)[1]
print(SetosaObserv)

VersicolorStuff=subset(iris, Species== "versicolor")
VersicolorObserv=dim(VersicolorStuff)[1]
print(VersicolorObserv)

VirginicaStuff=subset(iris, Species== "virginica")
VirginicaObserv=dim(VirginicaStuff)[1]
print(VirginicaObserv)

#PartC: get the rows with Sepal.Width greater than 3.5
sepal3.5=subset(iris, Sepal.Width > 3.5)
print(sepal3.5)

#PartD: Write just setosa data to comma-delimited "setosa.csv"
SetosaStuff=subset(iris, Species =="setosa")
write.csv(SetosaStuff, file = "setosa.csv")

#PartE: Calc mean, minimum, and max of Petal.Length for virginica observations respectively
Setvirginica=subset(iris, Species == "virginica")
VPetalLength=Setvirginica[,3]
mean(VPetalLength)
min(VPetalLength)
max(VPetalLength)
