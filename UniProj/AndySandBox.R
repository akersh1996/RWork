# Use this file to play around and test things
# See also example1.R file for working example from instructions



# delete the lines below and add your own test

x<-(-10:10)  # Set x up as a vector on integers (-10, -9,..., 9, 10)
y<-x^2       # set y as a vector whose values are square of x values
plot(y,type="l") # This will print a plot of y

# Once you have sourced this file you can type x and y in the console window below
# This will show you the values of x and y that have been defined above
si1<-stoch.int(fun1=fun.id, fun2=fun.null, lh=T, sigma=2, alpha=1)
si2<-stoch.int(fun1=fun.id, fun2=fun.null, lh=F, sigma=2, alpha=1)
si1
hist(si1)
hist(si2)
si3<-si1-si2

si1[3]

sde1<-sde(fun1=fun.id, fun2=fun.id, w=bm, init=1, sigma=-1, nu=1)
sde1[6]
