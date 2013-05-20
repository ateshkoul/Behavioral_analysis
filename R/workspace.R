#Statistics one lecture 6 example 6-Impact study correlations
# read table, descriptive statistics,

impact <-read.table("datafiles_STATS1.EX.02.txt",header=T);
impact <-read.table("2.txt");

impact
names(impact)
hist(impact$Ar,xlab="score",main="verbal memory",col="blue")
describe.by(impact,impact$cond)
plot(impact$memory.verbal ~ impact$memory.visual,main="scatterplot",xlab="memory.verbal",ylab="memory.visual",)
abline(lm(impact$memory.verbal ~ impact$memory.visual),col="blue")
cor.test(impact$Ar,impact$En)
cor.test(impact$Ar,impact$NW)
cor.test(impact$En,impact$Arc)
cor.test(impact$Arc,impact$NW)
cor.test(impact$En,impact$NW)


cor(impact)
clc

cor(impact$pre.wm.v1[impact$cond=="aer"],impact$pre.wm.v2[impact$cond=="aer"])
cor(impact$pre.wm.v1[impact$cond=="des"],impact$pre.wm.v2[impact$cond=="des"])
cor(impact$pre.wm.s1[impact$cond=="aer"],impact$pre.wm.s2[impact$cond=="aer"])
cor(impact$pre.wm.s1[impact$cond=="des"],impact$pre.wm.s2[impact$cond=="des"])



cor(impact$pre.wm.v1[impact$cond=="des"],impact$post.wm.v1[impact$cond=="des"])
cor(impact$pre.wm.v2[impact$cond=="des"],impact$post.wm.v2[impact$cond=="des"])
cor(impact$pre.wm.s1[impact$cond=="des"],impact$post.wm.s1[impact$cond=="des"])
cor(impact$pre.wm.s2[impact$cond=="des"],impact$post.wm.s2[impact$cond=="des"])

plot(impact$memory.verbal~impact$memory.visual)
lm(impact$memory.verbal~impact$memory.visual)
lm(impact$V2~impact$V1)
hist(impact$V1,col="blue")

hist(impact$V2,col="")
impact



impact <-read.table("1.txt",header=T);
impact
describe(impact)
anova(impact$Arabic~impact$Hindu)
t.test(impact$Arabic,impact$Hindu,alternative = c("two.sided", "less", "greater"),mu = 0, paired = TRUE, var.equal = FALSE,conf.level = 0.95)
