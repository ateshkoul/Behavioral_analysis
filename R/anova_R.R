#script for factorial analysis
library(psych)
#read the data in table format
a = read.table("filename.txt",header=T)
#preview the column names
names(a)

#perform the anova using aov command
# the syntax is for repeated measures anova 
# where acc = dependent variable, script, stim = dependent variables
# sub = subjects (because repeated measures)
 
b = aov(acc~(script*stim)+Error(factor(sub)/(script*stim)),a)
# view the results using summary function
 
summary(b)

#Two way within subject anova

# independent variable = Acc, dependent variables = Stim, Lan,
# within subject error = Sub, factor to tell It's a factor

b = aov(Acc~(Stim*Lan)+Error(factor(Sub)/(Lan*Stim)),a)
print(model.tables(b,"means"),digits=3)    
#report the means and the number of subjects/cell
boxplot(Acc~(Stim*Lan),data=b)
#graphical summary of means of the 6 cells
