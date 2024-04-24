data = read.csv("C:\\Users\\ishik\\Downloads\\IRIS.csv")

data

data2 = read.delim("C:\\Users\\ishik\\OneDrive\\Desktop\\ssb.txt")


data6 = subset(data,petal_width>0.2,select = c(sepal_length,species))
data6

data7 = subset(data,species=='Iris-setosa',select = c(sepal_length,species))
data7

df = data("women")
df

o = women
o

df = women
df
h = cut(women$height,3)
hw = cut(df$weight,3)
hw

s = summary(df)
s

