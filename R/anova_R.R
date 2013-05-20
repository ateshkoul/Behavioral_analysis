#test script for factorial analysis
library(psych)
a = read.table("2x2_acc.txt",header=T)
names(a)
b = aov(acc~(script*stim)+Error(factor(sub)/(script*stim)),a)
#b = aov(Acc ~ Exp,a)
summary(b)
print(model.tables(b,"means"),digits=3)    
#report the means and the number of subjects/cell
boxplot(Acc~(Stim*Lan),data=a)
#graphical summary of means of the 6 cells




describe(a$Acc[18:34])

print(model.tables(b,"means"),digits=3)
1:10
y=c(7:20,200)
var(a$Acc[18:34])
shapiro.test(a$Acc)
qq.plot(a$Acc)

#Two way within subject anova

# independent variable = Acc, dependent variables = Stim, Lan,
# within subject error = Sub, factor to tell It's a factor

b = aov(Acc~(Stim*Lan)+Error(factor(Sub)/(Lan*Stim)),a)
print(model.tables(b,"means"),digits=3)    
#report the means and the number of subjects/cell
boxplot(Acc~(Stim*Lan),data=b)
#graphical summary of means of the 6 cells