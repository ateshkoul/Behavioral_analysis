#coursera statistics one-homework 1
# read data from dataframe, plot histograms and descriptive statistics

data <- read.table("DAA.01.txt",header=T)
data$cond$
class(data)
names(data)
layout(matrix(c(1,2,3,4,5,6,7,8),2,,byrow=TRUE))
hist(data$pre.wm.s[1:100],xlab="des",col="red",main = "pre wm s")
hist(data$post.wm.s[1:100],xlab="des",col="blue",main="post wm s")
hist(data$pre.wm.v[1:100],xlab="des",col="black",main="pre wm v")
hist(data$post.wm.v[1:100],xlab="des",col="yellow",main="post wm v")


hist(data$pre.wm.s[100:200],xlab="aer",col="red",main = "pre wm s")
hist(data$post.wm.s[100:200],xlab="aer",col="blue",main="post wm s")
hist(data$pre.wm.v[100:200],xlab="aer",col="black",main="pre wm v")
hist(data$post.wm.v[100:200],xlab="aer",col="yellow",main="post wm v")

describe(data(1:100))
var(data$pre.wm.v[100:200])

mean(data$pre.wm.v[100:200])
help(hist)

hist(data$pre.wm.s[1:100])
max(data$pre.wm.s[1:100])

data