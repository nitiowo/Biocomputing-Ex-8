#Exercise 8
setwd("~/Desktop/Biocomputing2023/Git_Home_Repo/Biocomputing-Ex-8/")


# 1. Write R code that replicates the functionality of the head function we used in bash. 
  #Your code should define a variable with the file to return lines from and a variable
  #representing the number of lines to be returned from the top of the indicated file. 
  #The selected file content should be printed to the terminal in R. 
  #Do not use the head function in R. Be sure you are using square bracket indexing to 
  #subset the tabular file.

      #in the terminal the head function prints out the first 10 lines
    HeadFun<-iris[1:10,]
    numofLines<-dim(HeadFun)

#2.Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
iris<-read.csv("iris.csv", header=TRUE)

  #print the last 2 rows in  the last 2 columns to the R terminal
    #df[row,coloumns]
    #nrow(iris)
    #iris[149,]
    #iris[150,] #df[row,coloumns]
    #iris[149:150, ]
    iris[c(149,150), 4:5]
    
  #get the number of observations for each species included in the data set
    #one<-iris[iris$Species == "setosa",] #prints the number of observations for one species
    #dim(one)
    #table function (prints out a table with how many of each species is found)
    table(iris$Species)
    
  #get rows with Sepal.Width > 3.5
    table(iris$Sepal.Width) #checks how many of eack width there is in the csv
    table(iris[,2] > "3.5")
    
    #width<-iris[iris$Sepal.Width == "3.5",] #this only looks for width that are 3.5
       #dim(width)
    
  #write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
    one<-iris[iris$Species == "setosa",]
    print(one) #checking the data of the variable
    write.table(one,"Setosa.csv",row.names = FALSE,sep = ",")
  #calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
    two<-iris[iris$Species == "virginica",] #variable grouping the same spieces 
    print(two)#checking the data of the variable
    
    mean(two$Sepal.Length)
    min(two$Sepal.Length)
    max(two$Sepal.Length)
  
    
    
    
    
    
    
    