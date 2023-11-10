#1: write R script to replace the head function in bash
> 
  > #define a variable to return lines from
  > file<-read.csv("iris.csv")
  > #define a variable representing the number of lines to return (10)
    > numberoflines<-1:10
    > #replacing the head function
      > R_head<-file[numberoflines,]
      > print(R_head)

#2: Load iris.csv file and writing R code to accomplish the following:
   > 
      > #load the iris.csv file
        >irisdata<-read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)
      > #a - print the last two rows in the last two columns
        > print(irisdata[149:150,4:5])
      > #b - find number of observations for each species
        > numberofobservations<-table(irisdata$Species)
        > print(numberofobservations)
      > #c - print rows with Sepal.Width > 3.5
        > widerthan3.5<-subset(irisdata, Sepal.Width>3.5)
        > print(widerthan3.5)
      > #d - convert data for setosa to a comma-delimited file ‘setosa.csv’
        > setosas<-subset(irisdata, Species == "setosa")
        > write.csv(setosas,file ="setosa.csv")
      > #e - find mean, minimum, and maximum of Petal.Length for observations from virginica
        > virginicas<-subset(irisdata, Species == "virginica")
        > petallengthdata<-virginicas[,3]
      > #mean answer
        > print(mean(petallengthdata))
      [1] 5.552
      > #minimum answer
        > print(min(petallengthdata))
      [1] 4.5
      > #max answer
        > print(max(petallengthdata))
      [1] 6.9