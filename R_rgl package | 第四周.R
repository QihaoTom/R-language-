logfamily<-cds$ecno #取cds某一列
a5<-cds[5,]
cds[5,6]
cds[1:2,]
cds[1:2,5:8]
cds[c(1,10),]
cds[-10,]
a<-4
b<-c(1,2,3)
c<-matrix(c(1,0,0,0,2,0,0,0,3),nrow=3,ncol=3,byrow=T)
d<-c("zhangsan","lisi")
mean(logfamily)
var(logfamily)
sd(logfamily)
max(logfamily)
min(logfamily)
median(logfamily)
range(logfamily)
quantile(logfamily)
summary(logfamily)
which.max(logfamily)
which.min(logfamily)
sumsq<-function(data){
  return(sum(data^2))
}
sumsq(logfamily)
f<-function(x){
  return(x^2+2*x+3)
}
f(2)
optim(par=2,fn=f)
optim(par=-0.8,fn=f)
optim(par=-0.96,fn=f,m)
library(rgl)

plot3d(cds$ecno,cds$age,cds$edu)
plot3d(cds$ecno,cds$age,cds$edu,xlabel='ecno'，ylabel='age'，zlabel='edu') #加标签
plot3d(cds$ecno,cds$age,cds$edu,xlabel='ecno'，ylabel='age'，zlabel='edu',color='green') #加颜色
plot3d(cds$ecno,cds$age,cds$edu,xlabel='ecno'，ylabel='age'，zlabel='edu',color=cds$ccp) #会颜色不一样
