# 1) Entrez dans R le vecteur X composé de tous les entiers de 1 à 100.
X<-1:100
# 2) Tracez le nuage de points entre les vecteurs X et Y = 2X ainsi que Z = −3X.
Y<-2*X
Z<-(-3)*X
plot(X,Y, xlab = "X",ylab = "2X")
plot(X,Z,xlab = "X",ylab = "-3X")
# 3) Calculez le coefficient de corrélation entre X et Y = sqrt(X).
Yr<-sqrt(X)
corXYr = cor(X,Yr)
# 4) Retrouvez un vecteur U qui donne les premiers 100 nombres de la suite de Fibonacci.
# Calculez la coefficient de correlation entre X = seq(1, 100, 1) et Y = log(U).
U<- rep(1, 100)
#En utilisant la boucle for, assigner a un+2 la valeur u n+1 + u n .
for(i in 1:(length(U)-2)){U[i+2]<-U[i+1] + U[i]}
U<-log(U)
corXU<-cor(X,U)
#5) Pour chacun des exemples ci-dessus, tapez les commandes
# reg = lm(Y~X)
# plot(X,Y)
# abline(reg)
#1 X et Y
reg<-lm(Y~Z)
plot(X,Y)
abline(reg)
#2 X et Yr
reg<-lm(Yr~X)
plot(X,Yr)
abline(reg)
#3 X et U
reg<-lm(U~X)
plot(X,U)
abline(reg)
#4 X et Y
reg<-lm(Z~X)
plot(X,Z)
abline(reg)
#correction 

# Creons 100 entiers aleatoires de loi GEOMETRIQUE G(p), P(T=k)=p^k(1-p), ici p=0.4
T <- rgeom(100, 0.4) 

par(mfrow=c(2,2))#permet d'avoir une matrice de 2*2 plot
plot(X, Y, col="blue", main="(X, 2X)")
abline(lm(Y~X), col="red")
plot(X, Z, col="blue", main="(X, -3X)")
abline(lm(Z~X), col="red")
plot(X, Yr, col="green", main="(X, sqrt(X))")
abline(lm(Yr~X), col="magenta")
plot(X, T, col="green", main="(X, T)")
abline(lm(T~X), col="magenta")
par(mfrow=c(1,1))
