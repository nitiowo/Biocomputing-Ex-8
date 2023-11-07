#CODE REPLICATING THE HEAD FUNCTION

data=read.csv("file.csv")
lines=1:10
head<-data[lines,]
print(head)


#IRIS.CSV FILE CODE BELOW

#loading the file
data=read.csv(file="iris.csv", header = TRUE, stringsAsFactors = FALSE)
#print the last 2 rows in the last 2 columns to the R terminal
last2rows=tail(data, 2)
last2columns=last2rows[,4:5]   
print(last2columns)

#get the number of observations for each species included in the data set
table(data$Species)
SetosaData=subset(data, Species == "setosa")
SetosaObservations=dim(SetosaData)[1]
print(SetosaObservations)
VersicolorData=subset(data, Species == "versicolor")
VersicolorObservations=dim(VersicolorData)[1]
print(VersicolorObservations)
VirginicaData=subset(data, Species == "virginica")
VirginicaObservations=dim(VirginicaData)[1]
print(VirginicaObservations)

#get rows with Sepal.Width > 3.5
BigWidth=subset(data, Sepal.Width > 3.5)
print(BigWidth)

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
SetosaData=subset(data, Species == "setosa")
write.csv(SetosaData, file = "SetosaData.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica=subset(data, Species == "virginica")
VirginicaPetalLengths=virginica[,3]
mean(VirginicaPetalLengths) #mean of Petal.Length for observations from virginica
min(VirginicaPetalLengths) #minimum of Petal.Length for observations from virginica
max(VirginicaPetalLengths) #maximum of Petal.Length for observations from virginica
