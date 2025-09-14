library(datasets)
data('mtcars')
head(mtcars,8)

?mtcar

install.packages('ggplot2')

library(ggplot2)

ggplot(aes(x=wt,),data=mtcars) + geom_histogram(binwidth = 0.5)


mtcars$vs<-as.factor(mtcars$vs)

ggplot(aes(x=vs,y=mpg, fill = vs), data=mtcars) + geom_boxplot(alpha=0.3) + ggtitle('have no idea') + theme(legend.position = 'none')



ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle('displacement vs mpg') + labs(x='dispacement', y='gallon')