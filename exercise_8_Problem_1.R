#Exercise 8
#11-9-2023
#Problem 1
#clear previous contents
rm(list=ls())
#format of head function in bash: head option... file...

#for nrows as indicated by user we will print that many rows, we will designate 5 for this example
nrows = 5

#we will use the variable "data" to allow us to read rows from the file assigned to data
#example being used is a csv file but the user can change "sep" if it is a tabular file
data=read.table(file="iris.csv",header=TRUE,sep=",")


#we will use "print" to print the output
print(data[1:nrows,])
