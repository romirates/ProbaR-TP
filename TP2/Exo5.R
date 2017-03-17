# Exercice 2.5 — Introduction aux tableaux de données
# Un tableau est une structure de R qui regroupe des objets pouvant être des vecteurs, des valeurs
# numériques ou des caractères. Beaucoup de tableaux sont déjà chargés dans R.
# 1) Tapez la commande data() pour voir les tableaux déjà chargés dans R.
data()
# 2) Si le tableau trees n’y est pas, chargez le via la commande data(trees) et examiner les
# résultats des deux commandes de R str(trees) et summary(trees)
str(trees)
trees
summary(trees)
# 3) Extrayez le vecteur composé des valeurs Girth (diamètre) du tableau en utilisant trees$Girth
# ou trees[ , 1]
trees$Girth
# 4) Que se passe-t-il si vous utilisez la fonction plot sur le tableau trees: plot(trees)
# On constate que chaque colonne contient 31 valeurs
arbres = trees
names(arbres) = c("Circonf.", "Hauteur", "Volume")
plot(arbres)
# 5) Calculez les coefficients de corrélation entre les différentes colonnes du tableau trees, et
# vérifier que les résultats sont les mêmes que ceux donnés par la commande cor(trees)
cor(arbres)  # Matrice des coefficients de correlation  cor(X,Y) = cov(X,Y)/sqrt(var(X)*var(Y))

