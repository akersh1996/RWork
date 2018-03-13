# Working through the Project questions

# [1] Simulate a Brownian motion (BM) with nsim=1000, ntime=1000 and with a few other values
# (not too big), store the result in a matrix bm1, say. Note that simulations for W1 are stored in
# bm1[,ntime+1].

# Call the bmsim function a number of times and pass in different values for the 
# nsim and ntime parameters.

bm1 <- bmsim(1000,1000)  # This calls the bsim function and stores the result matrix in bm1

# ----------------Extras------------------------------------------
# Remove extras section before submitting

# NOTE: We could also have done
bm1 = bmsim(1000,1000)
# Because <- and = are both ways to assign results to a variable

# Lines beginning with a # like this one are comments
x = 10 / 3 # You can also put comments at end of lines

#-----------------END Extra

# How do you know bm1 is a matrix with brownian motion data in it?
# It does ask you to but you should print out in some way to prove it has worked
# How can I print out?
# Method 1 - Just type bm1 in the console window below (on blank line)
# Method 2 - Within this file use the print(...) function
print(bm1)
# Method 3 - Plot the result as a graph
plot(bm1)

# The question is asking you to try with a number of different values of nsim and ntime

bm2 <- bmsim(800,500)

bm3 <- bmsim(600,100)

# NOTE: These are storing results in seperate matrixes bm2 and bm3.
# We could have stored in bm1 again but then the previous result above would have been lost

# If you want to see the results of bm2 and bm3 type plot(bm2) or plot(bm3) in the console below


# The question also says: Note that simulations for W1 are stored in bm1[,ntime+1].
# Print some of these out to prove it.

print("Printing out bm1[,ntime+1]") # This makes it easier to see in console output
print(bm1[,2])

# [2] (a) Simulate a BM again and store it, e.g., in a matrix bm2.
# Now define bm3 = (bm1 + bm2)/√2.
bm2 <- bmsim(1000,1000)
bm3 <- (bm1 + bm2) / sqrt(2)

# Verify whether or not bm3[,ntime+1] is normal. What are its parameters mean and variance?

# Not sure exactly how you do this??
# For a particular value of ntime you can do the following

ntime = 1
W1Vals = bm3[,ntime+1]
meanValue = mean(W1Vals)
varianceValue = mean(W1Vals)
print("(2a) - Mean and Variance for bm3[,2]")
print(meanValue)
print(varianceValue)
# Both values are printing out the same (does this make it normal??)
# Change the value of ntime above and rerun to see if you get same results
# TIP: Copy the above into a number file to run (to make quicker). 
# It will not keep recalculating bm1, bm2, bm3 then


# More advanced method
# You really want to prove for all possible values of ntime (between 1..1000)
# to do this you would need to run a loop. something like

print("Testing mean and variance for all values of ntime") 
meanVarCheckFailed = FALSE
for (ntime in 1:1000){
  W1Vals = bm3[,ntime+1]
  meanValue = mean(W1Vals)
  varianceValue = mean(W1Vals)
  
  if (meanValue != varianceValue)  # != is the NOT equal operator 
  {
    cat("mean and variance differ for ntime=")  
    print(ntime)
    meanVarCheckFailed = TRUE # Remember that at least 1 test failed
  }
  
}
if (meanVarCheckFailed == FALSE) {
  print("All mean+variances where the same for all values of ntime");
} else {
  print("SOME mean+variances where different for some values of ntime")
}



