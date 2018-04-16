# Multinomial Response Model的强假设：影响不同的观测效应是独立的
# 画出极值分布 当对e的分布进行假设
# 不可观测的因素不能同时影响地铁和步行，是独立的，比如天气就不考虑在内
x<-seq(-3,3,by=0.01)
d<-exp(-x)*exp(-exp(-x))
plot(x,d,type="l")
