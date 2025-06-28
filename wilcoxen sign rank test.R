
# This data is an example not real
attach(cars)
head(cars)
#first create non normal data
d=speed-dist
shapiro.test(d)
par(mfrow=c(1,2))
hist(scale(d),prob=T)
curve(dnorm(x),add=T,col="Red")
# normality is false so we use wilcoxen sign rank test
wilcox.test(d,mu=0)
write.csv(cars,"C:/Users/M.Qasim/Documents/cars.csv")
