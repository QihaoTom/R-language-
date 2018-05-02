library(Formula)
library(maxLik)
library(miscTools)
library(mlogit)
data("ModeCanada")
MC<-mlogit.data(ModeCanada,subset=noalt==4,alt.levels=c("train","air","bus","car"))
MC$time<-MC$ivt+MC$ovt
#回归方程，半截线前为随不同交通工具变化，后为随不同个体变化，以公交为基准，来比较
fit<-mlogit(choice~cost+time+freq | dist+income+urban,MC,reflevel="bus")
summary(fit)
p<-fitted(fit,type="probabilities")
apply(p,2,mean)
#一样odds
NMC<-MC
NMC[NMC$alt=="train","time"]<-0.8*MC[MC$alt=="train","time"]
p1<-predict(fit,NMC)
odds<-p[,3]/p[,4]
odds1<-p1[,3]/p1[,4]
head(odds)
head(odds1)
#消费者剩余转换为钱
ECS<-logsum(fit)
ECS1<-logsum(fit,data=NMC)
CS<-(ECS1-ECS)/0.0281660
head(CS)
# 最小0.29美元，最大16.03美元
summary(CS)
# 可视化
hist(CS,breaks=30,col="red")
# 总成本为7376.633刀
sum(CS)
# 可以将得到的政策成本，作为一个新变量，看谁愿意为地铁涨价付费

  
  