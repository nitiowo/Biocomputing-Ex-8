#Exercise 8 R Script
##Start in working directory containing iris.csv file before running this script!
#1) Write R code that replicates functionality of head function in bash. 
## code should... 
### define a variable with the file to return lines from 
### define a variable representing # of lines to be returned from top of indicated file
### print selected file content to terminal in R
### not use head function in R
### use square bracket indexing to subset the tabular file!

#2) 
#load data in iris.csv file
irisdata=read.csv("iris.csv",header=TRUE,sep=",")
# write R code to...
## print last 2 rows in last 2 columns to R terminal
last2rows=irisdata[149:150,]
last2columnsoflast2rows=last2rows[,4:5]
last2columnsoflast2rows
## get # of observations for each species included in data set
setosa=irisdata[irisdata[,5]=="setosa",]
nrow(setosa)
versicolor=irisdata[irisdata[,5]=="versicolor",]
nrow(versicolor)
virginica=irisdata[irisdata[,5]=="virginica",]
nrow(virginica)
## get rows with Sepal.Width > 3.5
Sepal_Width_over3.5=irisdata[irisdata$Sepal.Width>3.5,]
Sepal_Width_over3.5
## write data for the species setosa to a comma-delimited file named "setosa.csv"
write.table(setosa, file="setosa.csv", append=FALSE, sep=",", row.names = FALSE, col.names = TRUE)
## calculate the mean, min, and max of Petal.Length for observations from virginica
virginica_petal_length=virginica$Petal.Length
mean(virginica_petal_length)
min(virginica_petal_length)
max(virginica_petal_length)