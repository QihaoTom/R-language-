x<-seq(-3,3,by=0.01)
x
plot(x,dnorm(x,mean=0,sd=1)) #画出正态分布
plot(x,dnorm(x,mean=0,sd=1),type="l",lwd=3,col="red") 
plot(x,dnorm(x,mean=0,sd=1),type="p") 
lines(x,dlogis(x),type="l",lwd=3,col="green") #画出logis分布
plot(x,dnorm(x,mean=0,sd=1),type="l",lwd=3,col='red') 
abline(v=0)#加一条y轴竖线
fit<-glm(admit~sat,data=sat,family = 'binomial'(link = "probit"))
summary(fit)
a<-fit$coefficients
dnorm(a[1]+a[2]*sat$sat[1])*a[2]
dnorm(a[1]+a[2]*sat$sat[2])*a[2]

#for 循环实现 计算APE 公式
A<-matrix(nrow=120,ncol=1)
for(i in 1:120){
A[i]<-dnorm(a[1]+a[2]*sat$sat[i])*a[2]}
mean(A) #很小 SAT的分数几乎不影响录取

dnorm(a[1]+mean(sat$sat)*a[2])*a[2]




