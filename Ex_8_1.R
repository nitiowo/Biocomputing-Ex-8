# Usage: Rscript Ex_8_1.R [filename] [number of lines to return]
# For example: Rscript Ex_8_1.R iris.csv 20

args = commandArgs(trailingOnly=TRUE)
print(args)
file = read.csv(args[1])
print(file[1:args[2],])