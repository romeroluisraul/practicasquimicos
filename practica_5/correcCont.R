pbinom(301,size=1000,0.3)-pbinom(249,size=1000,0.3)

estand1 <- (250-300)/sqrt(0.3*0.7*1000)
estand2 <- (301-300)/sqrt(0.3*0.7*1000)
pnorm(estand2)-pnorm(estand1)

estand1 <- (250-300-0.5)/sqrt(0.3*0.7*1000)
estand2 <- (301-300+0.5)/sqrt(0.3*0.7*1000)
pnorm(estand2)-pnorm(estand1)
