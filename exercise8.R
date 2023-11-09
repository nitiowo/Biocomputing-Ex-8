# Biergans Exercise 8

# Part 1

# Define the number of rows to print
number_of_rows <- 10

# Define the function 'head_function'
head_function <- function(file_name, number_of_rows) {
  # Read the file into a data frame
  file_data <- read.csv(file_name, stringsAsFactors = FALSE)
  
  # Print the first 'number_of_rows' rows of the data frame
  print(file_data[1:number_of_rows, ])
}

# Call the function with the file name and number of rows
head_function('iris.csv', number_of_rows)

# Part 2

# Load the iris data using base R function
iris_data <- read.csv('iris.csv', stringsAsFactors = FALSE)

# Print the last 2 rows of the last 2 columns
print(iris_data[(nrow(iris_data)-1):nrow(iris_data), (ncol(iris_data)-1):ncol(iris_data)])

# Get the number of observations for each species
species_count <- table(iris_data$Species)
print(species_count)

# Get rows with Sepal.Width > 3.5
wide_sepals <- iris_data[iris_data$Sepal.Width > 3.5, ]
print(wide_sepals)

# Write the data for the species setosa to 'setosa.csv'
write.csv(iris_data[iris_data$Species == 'setosa', ], 'setosa.csv', row.names = FALSE)

# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_stats <- with(iris_data[iris_data$Species == 'virginica', ],
                        list(Mean = mean(Petal.Length),
                             Min = min(Petal.Length),
                             Max = max(Petal.Length)))
print(virginica_stats)