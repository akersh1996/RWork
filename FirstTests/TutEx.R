# Testing out examples from http://adv-r.had.co.nz/Data-structures.html
lst1 <- list(1,"two",3,4,5,6,7)
vec1 <- 0:100
vec2 <- c("one","two","three")
print(typeof(lst1))
print(typeof(vec1))
print(typeof(vec2))

attr(lst1, "my_attribute") <- "This is a vector"
attr(lst1, "my_attribute2") <- "This is my name"
print(attr(lst1, "my_attribute"))
print(attributes(lst1)["my_attribute"])
print(attributes(lst1)$my_attribute)