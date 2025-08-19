setwd("C:/Users/Flor/Dropbox/EstadisticaQ2020/practicas_2020_definitivas/practica_4_2020")

## ejercicio 3
salchiA <- read.table("datosEjercicio3_A.txt",header=TRUE)
attach(salchiA)
salchiB <- read.table("datosEjercicio3_B.txt",header=TRUE)
attach(salchiB)
salchiC <- read.table("datosEjercicio3_C.txt",header=TRUE)
attach(salchiC)

par(mfrow=c(1,3))
hist(CALORIAS.A,prob=T)
hist(CALORIAS.B,prob=T)
hist(CALORIAS.C,prob=T)


## ejercicio 4
nitrato <- read.table("datosEjercicio4.txt",header=TRUE)
attach(nitrato)
names(nitrato)

hist(GRUPO1,prob=T)
curve(dnorm(x, mean(GRUPO1),sd(GRUPO1)),add=T,col=2)
hist(GRUPO2,prob=T)
curve(dnorm(x, mean(GRUPO2),sd(GRUPO2)),add=T,col=2)

boxplot(nitrato)

qqnorm(GRUPO1)
qqline(GRUPO1,col=2)
qqnorm(GRUPO2)
qqline(GRUPO2,col=2)

c(mean(GRUPO1)-qnorm(0.975)*sd(GRUPO1)/sqrt(length(GRUPO1)),mean(GRUPO1)+qnorm(0.975)*sd(GRUPO1)/sqrt(length(GRUPO1)))
c(mean(GRUPO2)-qt(0.975,49)*sd(GRUPO2)/sqrt(length(GRUPO2)),mean(GRUPO2)+qt(0.975,49)*sd(GRUPO2)/sqrt(length(GRUPO2)))

### práctica 6
shapiro.test(GRUPO1)
library(nortest)
lillie.test(GRUPO1)
shapiro.test(GRUPO2)
lillie.test(GRUPO2)



## ejercicio 6
nubes <- read.table("datosEjercicio6.txt",header=TRUE)
attach(nubes)
names(nubes)
boxplot(nubes)
par(mfrow=c(1,2))
qqnorm(CONTROLES)
qqline(CONTROLES,col=2)
qqnorm(TRATADAS)
qqline(TRATADAS,col=2)
hist(CONTROLES,prob=T)
hist(TRATADAS,prob=T)

qqnorm(log(CONTROLES))
qqline(log(CONTROLES),col=2)
qqnorm(log(TRATADAS))
qqline(log(TRATADAS),col=2)
hist(log(CONTROLES),prob=T)
hist(log(TRATADAS),prob=T)

### práctica 6
shapiro.test(CONTROLES)
library(nortest)
lillie.test(CONTROLES)
shapiro.test(TRATADAS)
lillie.test(TRATADAS)

shapiro.test(log(CONTROLES))
library(nortest)
lillie.test(log(CONTROLES))
shapiro.test(log(TRATADAS))
lillie.test(log(TRATADAS))



