## como calculamos habitualmente
c(0.57-qnorm(0.975)*sqrt(0.57*0.43/100),0.57+qnorm(0.975)*sqrt(0.57*0.43/100))

## despejando p en lugar de estimarlo
(2*0.57+qnorm(0.975)^2/100-qnorm(0.975)*sqrt(0.04*0.57*0.43+(qnorm(0.975)/100)^2))/(2*(1+(qnorm(0.975)/100)^2))
(2*0.57+qnorm(0.975)^2/100+qnorm(0.975)*sqrt(0.04*0.57*0.43+(qnorm(0.975)/100)^2))/(2*(1+(qnorm(0.975)/100)^2))