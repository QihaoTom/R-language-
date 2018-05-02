#AER 家庭收入对健康的影响，用小孩子收入来避免互为因果
# Ordered Logit Model
cds$health<-6-cds$PRH
library(MASS)
#motheragebirth 妈妈生孩子时的年龄 | 变成一个factor，为分类变量，数据为cds，
fit<-polr(as.factor(health)~logfami+motheragebirth+nchild,data=cds,method="logistic")
summary(fit)          
# 系数解释：b1=0.49889，Y*（潜在健康水平）=b1家庭收入+b2妈妈生孩子的年龄+b3小孩子数量+e
# t大于1.96，显著拒绝原假设，家庭收入显著影响，妈妈生孩子的年龄和小孩数量均不显著
# fit<-polr(as.factor(health)~logfami+motheragebirth+nchild,data=cds,method="logistic",Hess=T) 看海赛矩阵
vcov(fit)

