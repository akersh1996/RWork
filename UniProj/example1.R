# This is the example from instructions - https://tinyurl.com/ydag278v

bm<-bmsim(200,100) # create 200 simulations of BM, each at 100 times on [0,1]
a<-dw2() # sum the squared increments of BM for each simulation
m<-mean(a) # print out the mean of a hist(a) 
print(m)

# plot a histogram of a
si1<-stoch.int(fun1=fun.exp, fun2=fun.sq, sigma=7, alpha=2)
hist(si1)
si2<-stoch.int(fun1=fun.exp, fun2=fun.sq, lh=F, sigma=7, alpha=2)
# two evaluations of stochastic integral with different
# endpoint conventions
hist(si1+si2) # histogram of si1+si2
x<-sde(fun1=fun.sq, init=6) # simulate solution of sde
x1<-x[,101] # vector of simulated values of X at time t=1
qqnorm(x1) # assess normality of x1
qqnorm(rnorm(100)) # simulate 100 N(0,1) variates and see what the

# qq plot looks like (see plots TAB)