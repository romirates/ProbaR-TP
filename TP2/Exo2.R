# 1) Calculer les probabilit ́es P (X = k) lorsque la loi de X est la loi binomiale de param`etres
# n = 15 et p= 0.3 (Vous pourriez utiliser la fonction dbinom).
x<-1:15
y<-dbinom(x,15,0.3)
plot(x,y, ylab ="Densité de la loi Binomiale B(15,0.3)", xlab="K")
