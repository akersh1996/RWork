cat("Some routines for the Math3733 practical\n")
cat("Version 1.4\n")
# updated Nov 2002
bmsim=function(nsim,ntime) {
  wn=matrix(rnorm(nsim*ntime),nrow=nsim,ncol=ntime)/sqrt(ntime)
  bm=matrix(0, nrow=nsim,ncol=ntime+1)
  for(i in 1:nsim) bm[i,]=cumsum(c(0,wn[i,]))
  bm
}
stoch.int=function(fun1=fun.null,fun2=fun.null,w=bm,lh=T,
                   sigma=1, nu=1, alpha=1) {
  environment(fun1)=environment()
  environment(fun2)=environment()
  nsim=nrow(w)
  ntime=ncol(w)-1
  jj=0
  if(lh==F) jj=1
  si=rep(0,nsim)
  for(j in 1:ntime) {
    si=si+sigma*fun1(w[,j+jj])*(w[,j+1]-w[,j]) + nu*fun2(w[,j+jj])/ntime
  }
  si
}
sde=function(fun1=fun.null,fun2=fun.null,w=bm,init=1,
             sigma=1, nu=1, alpha=1) {
  environment(fun1)=environment()
  environment(fun2)=environment()
  ntime=ncol(w)-1
  y=w
  y[,1]=init
  for(j in 1:ntime) {
    y[,j+1]=y[,j] + sigma*fun1(y[,j])*(w[,j+1]-w[,j])+nu*fun2(y[,j])/ntime
  }
  y
}
dw2=function(w=bm) {
  dif=w[,-1]-w[,-ncol(w)]
  dt=(dif^2)%*%rep(1,ncol(w)-1)
  dt
}
fun.null=function(x) {0}
fun.one=function(x) {1}
fun.id=function(x) {x}
fun.sq=function(x) {x*x}
fun.exp=function(x) {exp(alpha * x)}
qqchisq=function(x,df,main=NULL) {
  y=sort(x)
  n=length(x)
  ords=qchisq((1:n)/(n+1),df)
  plot(ords,y,main=main)
}


