boxplot(mpg~cyl,data=mtcars,col='green')

df=mtcars[,c('mpg','cyl')]
boxplot(df$mpg,df$cyl,col = 'pink')


car = df$mpg
m=hist(car,col = 'blue',breaks = 10)

car

plot(x=mtcars$wt,y=mtcars$mpg)



