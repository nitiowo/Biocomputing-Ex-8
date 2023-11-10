# Intro to Biocomputing: Exercise 8
# Lindsay Burgess
# Due: November 10, 2023

# Question #1: Write R code that replicates the functionality of the head function we used in bash. 
#             Your code should define a variable with the file to return lines from 
#             and a variable representing the number of lines to be returned from the top of the indicated file. 
#             The selected file content should be printed to the terminal in R. Do not use the head function in R. 
#             Be sure you are using square bracket indexing to subset the tabular file.

# Step 1: Create a file to execute the function in 
file_name <- "filename.txt" #can replace with any file name
# Step 2: create a variable to represent the number of lines to return from the top of the file 
line_number <- 4 #can replace with any number of lines
# Step 3: open the selected file and select lines
file_info <- readLines(file_name) #store contents of variable in file_info
number_of_lines <- file_content[1:min(line_number, length(file_info))] #determine lines selected without exceeding the file's number of lines
# Print desired lines from the top of file using cat
cat(number_of_lines, sep = "\n")

# Question #2: Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
#              print the last 2 rows in the last 2 columns to the R terminal
#              get the number of observations for each species included in the data set
#              get rows with Sepal.Width > 3.5
#              write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
#              calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

# Load data into R
iris_data <- read.csv("iris.csv", header = TRUE)
iris_data
# print the last 2 rows in the last 2 columns to the R terminal
tail(iris_data[, c(4, 5)], 2)
# get the number of observations for each species included in the data set
table(iris_data$Species)
# get rows with Sepal.Width > 3.5
iris_data[iris_data$Sepal.Width > 3.5, ]
# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa_file <- subset(iris_data, Species == "setosa") # create a dataframe subset of setosa species 
write.table(setosa_file, "setosa.csv", sep = ",", row.names = TRUE, col.names = TRUE) # write setosa_file to setosa.csv and make it tab delimited
read.csv("setosa.csv")
# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- subset(iris_data, Species == "virginica") #create a subset with just virginica data 
mean(virginica_data$Petal.Length) #determine the mean petal length from virginica data
min(virginica_data$Petal.Length) #find the minimum petal length among virginica species
max(virginica_data$Petal.Length) #find the maximum petal length among the virginica species

