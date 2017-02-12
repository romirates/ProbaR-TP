#1) Créer un vecteur x qui contient les réels compris entre 0 et 1 par pas de 0, 1.
x1 <- seq(0, 1, by=0.1)
#2) Calculer n la longueur de x
n=length(x1)
#3) En utilisant les opérations vectorielles, créer un vecteur y = 4x(1 − x).
y1 <- (1-x1)*4*x1
#4) avec plot, tracer la courbe rejoignant les points (x i , y i ).
plot(x1,y1)
#5) Calculer le maximum des y i
maxi<-max(y1)
#6) En quel point le maximum est-il atteint?
anteMaxi <-x1[c(which.max(y1))]
#7) Tracer la courbe de la fonction f : x -> 4x^2*(1 − x) sur l’intervalle [−2, 1], en rouge avec le logiciel.
x2 <- seq(-2, 1, by=0.1)
y2 <- (1-x2)*4*x2*x2
plot(x2,y2, col="red")