# Instrucciones de R para resolver el ejercicio 1 de la práctica de estadística
# descriptiva


suero <- scan()
42.5 41.6 42.1 41.9 41.1 42.2
39.8 43.6 42.1 40.1 43.9 41.9
43.5 42.8 43.8 43.1 42.7 43.3
39.4 41.9 40.7 40.3 42.6 39.0


# suero es el vector de las mediciones
# definimos una variable labo que guarda a qué laboratorio 
# corresponde cada medición. El comando rep repite el primer argumento,
# la cantidad de veces que indica el segundo argumento

labo <- as.factor(c(rep("A",6),rep("B",6),rep("C",6),rep("D",6)))

tapply(suero,labo,mean)  

# tapply aplica la función que figura en su tercer argumento, en este caso,
# el promedio (mean) a la variable del primer argumento, en este caso suero, 
# separando por el factor del segundo argumento, en este caso, el laboratorio. 
# Se puede aplicar a
# otras funciones, como var, median, mad, etc. Varíe los estadísticos 
# que utiliza con la instrucción tapply para responder a la pregunta 
# del problema, por ejemplo

tapply(suero,labo,var)


# graficamos
plot(suero,labo, axes = FALSE,xlab="",ylab="")
axis(2, 1:4, LETTERS[1:4])
axis(1)
box()
# superponemos los promedios en rojo
points(cbind(tapply(suero,labo,mean),as.factor(c("A","B","C","D"))),col="red",pch=16)
