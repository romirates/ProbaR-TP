# Exercice 2.6 — On utilise le tableau de données trees.
# 1) Entrez dans un vecteur X la circonférence des arbres. Dans un vecteur Y leur volume.
arbres = trees
names(arbres) = c("Circonf", "Hauteur", "Volume")
X<- arbres$Circonf
Y<- arbres$Volume
# 2) Tracer le nuage de points représentant le volume des arbres en fonction de leur grosseur.
# Ne fermez pas le graphe.
plot(X,Y, xlab = "Circonférence", ylab = "Volume", col="blue")
reg=lm(Y~X)
reg
abline(reg, col="red")
