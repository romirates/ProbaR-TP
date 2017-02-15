# Exercice 1.6 — Fibonnacci (script et boucle sous R) On souhaite calculer avec R les
# 100 premiers termes de la suite de Fibbonacci u n+2 = u n+1 + u n .
#créeer un vecteur u de taille 100 ne contenant que de 1
u <- rep(1, 100)
#En utilisant la boucle for, assigner a un+2 la valeur u n+1 + u n .
for(i in 1:(length(u)-2)){u[i+2]<-u[i+1] + u[i]}
#En utilisant la commande plot repr ́esenter la suite (u n ) sur un graphique.
plot(1:100,u,main="Suite de Fibonacci", xlabel="valeurs de 1 à 100", col="blue",)
#Représenter également la fonction v = ln(un) sur un graphique
v = log(u, base=exp(1))
plot(1:100, v, main = "Log népérien de la Suite de Fibonacci", xlabel="valeurs de 1 à 100", col="red")
