library(ggplot2)
t=seq(0,2*pi,by=0.1)
x=16*sin(t)^3
y=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
a=(x-min(x))/(max(x)-min(x))
b=(y-min(y))/(max(y)-min(y))
ggplot(data=NULL,aes(x=x,y=y))+
geom_line(aes(color=I('white')))+
geom_polygon(aes(fill='red'),show.legend=F)+
scale_x_continuous(labels = NULL)+
scale_y_continuous(labels = NULL)+
theme_bw()+
theme(panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      panel.border = element_blank(),
      axis.ticks=element_blank(),
      axis.title = element_blank())+
annotate('text',x=median(a),y=median(b),label='To Someone you like: Happy Birthday!',size=5)
  
