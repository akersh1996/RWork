# Andrew Kershaw - Response to practical
bm1<-bmsim(1000,1000)
bm1
plot(bm1)
bm2<-bmsim(1000,1000)
bm3<-(bm1+bm2) / sqrt(2)
plot(bm3)

ntime = 1000
W1Vals = bm3[,ntime+1]
meanValue = mean(W1Vals)
varianceValue = mean(W1Vals)
print("(2a) - Mean and Variance for bm3[,2]")
print(meanValue)
print(varianceValue)

si1<-stoch.int(fun1=fun.id,fun2=fun.null, lh=F, sigma=1, alpha=1)
si2<-stoch.int(fun1=fun.id, fun2=fun.null, lh=T, sigma=2, alpha=1)

si1[5]
si2[5]
si1[10]
si2[10]
si1[100]
si2[100]
si3<-si1-si2
si3[15]
plot(si3)
dif=si2-si1
length(si1)
