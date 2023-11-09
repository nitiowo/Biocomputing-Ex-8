
iris <- read.csv("~/Desktop/Biocomputing/Exercise 8/iris.csv", header = TRUE, stringsAsFactors = FALSE)
#you can change the value of "num_lines"
num_lines <- 10
head_data <- iris[1: num_lines, ]
print(head_data)

