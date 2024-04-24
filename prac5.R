a = c(20,12,43,19,25)

barplot(a,xlab = 'ssb',ylab = 'poopli',main = 'hehehaha')

barplot(a)

barplot(a,col = 'magenta')

b= c('lul','pup','tut','pip','qut')

barplot(a,names.arg=b)

x = barplot(a,names.arg = b,col='magenta',ylim = c(0,max(a)*2))


colors = c('pink','red','brown')
regions = c('east','west','north')

val = matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)
val

barplot(val,names.arg = b,col = colors,beside = TRUE)
legend('topleft',regions,cex = 1.2,fill = colors)

pie(a,b)

pie(a,b,col = rainbow(length(a)))

perc = round(100*a/sum(a),1)

pie(a,labels = perc,col = rainbow(length(a)))
legend("topleft",b,cex=0.8,fill = rainbow(length(a)))

png(file='boxplot.png')

df = mtcars
df
df = mtcars[,c('mpg','cyl')]
df

boxplot(df$mpg,df$cyl)
dev.off()
png(file='Z:\\ssb.png')

boxplot(mpg~cyl,data = mtcars,col='green',border='black')
