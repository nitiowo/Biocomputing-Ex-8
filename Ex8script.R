### Judith Lanahan
### Exercise 8 biocomputing FA2023
### 11/10/23

#set working directory to cloned exercise 8 repository

setwd("C:/Users/Judith Lanahan/OneDrive/Desktop/Biocomputing/R/Tut11/Biocomputing-Ex-8")

## 1: create a function that replicates functionality of head 

#function "likeHead" mimics the function "head."  It returns the number of rows of a data frame
#indicated by the user. This starts counting data rows after the column names.
#usage: likeHead(dfToUse, lineNum)
#dfToUse = name of data frame from which the user will extract data
#lineNum = the desired number of lines to be returned

likeHead<-function(dfToUse,lineNum){
  print(dfToUse[1:lineNum,])
}

## 2: second set of challenges 

#load data in iris.csv

iris<-read.csv("iris.csv")

#print the last two rows in the last two cols to terminal

sizeVec<-dim(iris)

nRows<-sizeVec[1]
nCols<-sizeVec[2]

miniIris<-iris[(nRows-1):nRows,(nCols-1):nCols] #done this way for flexibility

print(miniIris) #this is the last 2 rows/cols

#get the number of observations for each species in iris data set

speciesObs<-table(iris$Species)
print(speciesObs)

#get rows with sepal width > 3.5

bigSepal<-iris[iris$Sepal.Width>3.5,]
print(bigSepal)

#write the data for setosa entries to new file 'setosa.csv'

setosaDf<-iris[iris$Species=="setosa",]
write.csv(setosaDf, "setosa.csv", row.names=FALSE) #make sure working directory is set

#calculate mean, min, and max of Petal.Length for virginica

virgPetLen<-iris[iris$Species=="virginica",3]
mean(virgPetLen)
min(virgPetLen)
max(virgPetLen)

