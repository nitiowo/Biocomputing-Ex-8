#Question 1 Functionality of Head 
# Define the file path and number of lines to retrieve
file_path <- "iris.csv" 
num_lines <- 10

# Read lines from the file
file_content <- readLines(file_path)

# Subset the desired number of lines using square bracket indexing
selected_lines <- file_content[1:num_lines]

# Print the selected lines to the terminal
cat(selected_lines, sep = "\n")

#This method mimics using the head -n option in bash 
#line 3 indicates the number of lines to retrieve from iris.csv like head -n 
#line 10 specifies the numeber of lines to display in the terminal like head -n

#Question 2 Manipulating iris.csv file
# Load the data from 'iris.csv'
iris_data <- read.csv("iris.csv")

# Print the last 2 rows in the last 2 columns to the R terminal
last_two_rows_last_two_columns <- tail(iris_data[, c("Petal.Width", "Species")], 2)
print(last_two_rows_last_two_columns)

# Get the number of observations for each species included in the data set
observations_per_species <- table(iris_data$Species)
print(observations_per_species)

# Get rows with Sepal.Width > 3.5
rows_sepal_width_gt_3.5 <- iris_data[iris_data$Sepal.Width > 3.5, ]
print(rows_sepal_width_gt_3.5)

# Write the data for the species setosa to a comma-delimited file named ‘setosa.csv’
setosa_data <- iris_data[iris_data$Species == "setosa", ]
write.csv(setosa_data, "setosa.csv", row.names = FALSE)

# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_stats <- summary(iris_data$Petal.Length[iris_data$Species == "virginica"])
mean_virginica <- mean(iris_data$Petal.Length[iris_data$Species == "virginica"])
min_virginica <- min(iris_data$Petal.Length[iris_data$Species == "virginica"])
max_virginica <- max(iris_data$Petal.Length[iris_data$Species == "virginica"])

cat("Mean Petal.Length for virginica:", mean_virginica, "\n")
cat("Minimum Petal.Length for virginica:", min_virginica, "\n")
cat("Maximum Petal.Length for virginica:", max_virginica, "\n")


