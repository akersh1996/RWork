library("pracma")
# Was experimenting with different ways to print out the matrix
# For most of these you need to load extra packages using require/library function 
#require(grDevices)
#require(sna)
require(gridExtra)
library(grid)

# Create a 2x3 matrix (2 rows x 3 columns)
A <- matrix(c(3, 2, 36, 5, 4, 64), 2, 3, byrow = TRUE)
# the rref function perform a Reduced Row Echelon Form manipulation
# This therefore solves the simultaneous equations:
# 3x + 2y = 36
# 5x + 4y = 64
resolveMatrix <- rref(A)

# This next line print the result to the console below
print(resolveMatrix)
#matplot(resolveMatrix, main = "Matrix")
#gplot(resolveMatrix)

#  Here below we are plotting the result in a prettier form.
# You will see the output of this in plots (right bottpm of screen in R studio)
resolveMatrix2 <- round(resolveMatrix,2)
d <- head(iris, 1)
g <- tableGrob(resolveMatrix2)
grid.newpage()
grid.draw(g)

