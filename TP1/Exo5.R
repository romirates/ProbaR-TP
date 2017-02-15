#Exercice 1.5 — Boucles
#1) Taper x = c(1). Utiliser la boucle for contenant la commande x = c(x,1) pour cr ́eer
#un vecteur de taille 20 ne contenant que de 1. Comment crée le même vecteur avec rep ?
x<-1
for(i in 1:19)
  x<-c(x,1)
xrep<-rep(1, 20)
#2) Même question, avec une commande du genre x = i*x, pour calculer 20! =factorial(20).
x2<-1
for(i in 1:20)
  x2<-i*x2
x2facto <- factorial(20)

