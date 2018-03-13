# Dad Sandbox
# If we need to discuss how to do things in R I will put them in this file



# [1] Simulate a Brownian motion (BM) with nsim=1000, ntime=1000 and with a few other values
# (not too big), store the result in a matrix bm1, say. Note that simulations for W1 are stored in
# bm1[,ntime+1].

# This is asking for us to call bmsim function a number of times passing in different arguments
# for nsim and ntime parameters. It is also asking us to store