# Testing out examples from http://adv-r.had.co.nz/Data-structures.html
test1 <- function() {
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
  print(str(attributes(lst1)))
}

test2 <- function()
{
  df <- data.frame(x = 1:3, y = c("a", "b", "c"))
  str(df)
}

test3 <- function()
{
  df <- data.frame(
    x = 1:3,
    y = c("a", "b", "c"),
    stringsAsFactors = FALSE)
  str(df)
}

test4 <- function()
{
  obj <- structure("Obj1", attr1="value1", attr2="value2", attr3="value3")
  print(str(obj))
  print(str(attr(obj,"attr1")))
  print(str(attributes(obj)))
}

fac <- function(fn,n){
  if (n == 1) {
    1
  }
  else {
    n*fn(fn,(n-1))
  }
}

fac2 <- function(n){
  if (n == 1) {
    1
  }
  else {
    # Recall is the function currently being called
    n*Recall((n-1))
  }
}

#test1()
#test2()
#test3()
#test4()
print(fac2(100))