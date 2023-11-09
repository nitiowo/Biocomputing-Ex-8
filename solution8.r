# Solution 1
print_lines <- function(filename, num_lines) {
  file_lines <- readLines(filename)
  
  if (num_lines <= length(file_lines)) {
    selected_lines <- file_lines[1:num_lines]
    cat(selected_lines, sep = "\n")
  } else {
    cat(file_lines, sep = "\n")
  }
}
filename <- "iris.csv"
num_lines <- 2
print_lines(filename, num_lines)


# Solution 2
# 1
data <- read.csv("iris.csv")
tail(data[, c(4, 5)], 2)
# 2
table(data$Species)
# 3
subset(data, Sepal.Width > 3.5)
# 4
setosa_data <- subset(data, Species == "setosa")
write.csv(setosa_data, "setosa.csv", row.names = FALSE)
# 5
virginica_data <- subset(data, Species == "virginica")
mean(virginica_data$Petal.Length)
min(virginica_data$Petal.Length)
max(virginica_data$Petal.Length)
