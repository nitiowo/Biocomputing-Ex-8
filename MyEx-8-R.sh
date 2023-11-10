# Code that replicates fnctionality of head function in bash
# function syntax for returning first n rows of data set
x[1:n,]
# Where, x = input data set/data frame and n = number of last desired row
# How to use:
# import data set as df
df<-datasets::iris
# Return first 6 rows of data, including all columns
df[1:6,]

# How to print last 2 rows of last 2 columns in R terminal
# First find total rows and columns using dim function
dim(df)
# Print last 2 rows of last 2 columns
df[149:150,4:5]

# How to get # of observations for each species included
# First find unique species names
unique(df$Species)
# Mark observation for species as true
df[,5]=="setosa"
# Count true statements with sum
sum(df[,5]=="setosa", na.rm = TRUE)
# Repeat for other species
df[,5]=="versicolor"
sum(df[,5]=="versicolor", na.rm = TRUE)
df[,5]=="virginica"
sum(df[,5]=="virginica", na.rm = TRUE)


# Get rows with Sepal.Width>3.5
nrow(subset(df,Sepal.Width > 3.5))

# Write the data for the species setosa to a comma-deliminated file named 'setosa.csv'
# We know data for setosa is from lines 1-50, therefore we can grab using syntax from head command
setosa.csv <- df[1:50,1:5]

# Calculate mean, min, and max of Petal.Length for observations from virginica
# We know that virginica is from lines 101-150
# We know that Petal.Length is column 3
# Use mean, min, and max functions
mean(df[101:150,3])
min(df[101:150,3])
max(df[101:150,3])
