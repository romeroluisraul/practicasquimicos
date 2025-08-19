25.0 23.8
19.5 19.0
16.6 15.9
21.3 20.4
20.7 19.6
16.8 15.8

datosE <- c(25,19.5,16.6,21.3,20.7,16.8)
shapiro.test(datosE)
library(nortest)
lillie.test(datosE)
datosN <- c(23.8,19,15.9,20.4,19.6,15.8)
shapiro.test(datosN)
lillie.test(datosN)

datosN2 <- c(20,19,15.9,20.4,19.6,15.8)
shapiro.test(datosN2)
lillie.test(datosN2)
