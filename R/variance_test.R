setwd('c:\\Users\\Atesh\\Desktop')
a<-read.table('rt_var.txt')
a


summary(a)
names(a)
levene.test(a$ar,a$hd,a$en,a$hi)
install.packages("car")
leveneTest(acc~script,a)
bartlett.test(rt~script,a)


sample1 <- rnorm(20)
sample2 <- rnorm(20)

#General code to reshape two vectors into a long data.frame
twoVarWideToLong <- function(sample1,sample2) {
    res <- data.frame(
        GroupID=as.factor(c(rep(1, length(sample1)), rep(2, length(sample2)))),
        DV=c(sample1, sample2)
    )   
}  

long.data <- twoVarWideToLong(sample1,sample2)
long.data 

y <- c(sample1, sample2)

group <- as.factor(c(rep(1, length(sample1)), rep(2, length(sample2))))
y
group


levene.test(y, group)