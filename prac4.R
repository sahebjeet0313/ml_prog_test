df = data.frame(studid = c(1:5),
                subject = c('mpmc','bda','map','gtgpu','dbms'))
df

df2 = data.frame(studid = c(2:6),
                 state = c('mp','up','ap','hp','billu'))
df2

dfm = merge(x=df,y=df2,by='studid')
dfm

dfn = merge(x=df,y=df2,by='studid',all.x = TRUE)
dfn

dfnunnu = merge(x=df,y=df2,by='studid',all.y = TRUE)
dfnunnu

dfni = merge(x=df,y=df2,by='studid',all = TRUE)
dfni

dfniu = merge(x=df,y=df2,by=NULL)
dfniu

