var = 10L
var

vec = c(1,2,3,4)
vec

vec1 = c("A","B",2)
vec1

lis = list("hello",2,0)
lis

mat = matrix(c(1:4),nrow = 2,ncol = 2)
mat

mat2 = matrix(c(5:8),nrow = 2,ncol = 2)
mat2

matc = cbind(mat,mat2)
matc

matr = rbind(mat,mat2)
matr

arr = array(c(1:10))
arr2 = array(c(1:12),dim = c(2,2,3))
arr2

data_frame = data.frame(
  id = c(1,2,3),
  name = c('SSB','Poopli','Lullu'),
  age = c(20,18,2)
)

data_frame

num = c(1,2,3,4,1,1,1,5,6,6,8,8,9)
facte = factor(num)
facte

check = is.factor(num)
check

fat = c(1,2,2,3,4,5)
facte2 = factor(fat)
check2 = is.factor(facte2)
check2

check3 = is.factor(facte)
check3

arr2 = array(c(1:10),dim = c(2,2,2))
arr2

check4 = is.array(arr2)
check4

f = c(1,2,3,4)
f
check5 = is.array(f)
check5
