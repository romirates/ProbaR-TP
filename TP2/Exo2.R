# 1) Calculer les probabilit ́es P (X = k) lorsque la loi de X est la loi binomiale de param`etres
# n = 15 et p= 0.3 (Vous pourriez utiliser la fonction dbinom).
x <- -1:15
y <- dbinom(x, 15, 0.3)  # p[k]=P(X=x[k]) pour une v.a. X à loi B(15, 0.3)
sum(y)  # la somme vaut bien 1
plot(x,y, type="h", lwd=6, ylab ="Densité de la loi Binomiale B(15,0.3)", xlab="K")
#2) Repr ́esenter la loi de X a ` l’aide d’un diagramme en baton barplot(D).
barplot(y, x, ylab ="Densité de la loi Binomiale B(15,0.3) en diagramme en batonets", xlab="K",col="cyan")
#3) Quelle est la valeur la plus probable (c’est le mode de la distribution).
x[which.max(y)]
#4)
#avec somme des densité de proba
#• [X ≤ 10]
w<-dbinom(1:10,15,0.3)
xinf10 <- sum(w)
#• [X ≥ 4]
w<-dbinom(4:15,15,0.3)
xsup4 <- sum(w)
#• [3 ≤ X ≤ 9]
w<-dbinom(3:9,15,0.3)
xentre3et9 <- sum(w)
#avec utilisation de la fonction répartition
#• [X ≤ 10]
#par définition de la fonction de répartition F(x)=P(X<=x)
xinf10<-pbinom(10,15,0.3)
#• [X ≥ 4]
#on utilise le complémentaire soit [X<4] = [X<=3] 
xsup4<(1-pbinom(3,15,0.3))
# 5) Soit Y = X|X ≥ 3, c’est-`a-dire, P (Y = k) = (P (X = k, X ≥ 3)/P (X ≥ 3)
# Creez un vecteur representant les valeurs P (Y = k) pour Y = 0, . . . , 15.
# px3<-sum(dbinom(3:15,15,0.3))
# pyk<-dbinom(3:15,15,0.3)/px3
x<-(-1):17
#si l'élément de x est inférieur à 3 renvoie 0 sinon renvoie cet élément
Y<- ifelse(x<3,0,x)
X<-dbinom(x,15,0.3)
P <- X[which(x>2)]/(1 - pbinom(2, 15, 0.3))
P<-c(x[x<3]*0,P)
plot(Y, P, type="h", lwd=6, col="blue", main="Loi de Y=[X | X >=3 ]")
#façon de faire super bizarre
#calculer la moyenne et la variance de X et de Y
#plus espérance que moyenne
espX<-sum(X*x)
espY<-sum(P*x)
varX<-var(X)
varY<-var(P)

#fonction de répartition de Y
#somme cumuler des éléments précédent à un éléments donné
Z = cumsum(P)
plot(Y, Z, type="s", main="Fonction de REPARTITION de la loi de Y=[X | X >=3 ]", lwd=4, col="blue")
