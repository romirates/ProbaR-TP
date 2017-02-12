#crée les vecteurs suivant avec rep et seq 
#y0 constitué de la suite des entiers de −3 à 20 par pas de 1.
y0 = seq(-3, 20, by = 1)
#y1 contient tout les entiers pairs entre 2 et 18
y1 <- seq(2, 18, by=2)
#y2 est constitué de 8 fois de suite la valeur 4.
y2<-rep(4,8)
#y3 contient 8 nombres entre 0 et 16, par pas égaux. (Pourquoi est-ce que y3=seq(0, 16, by = 16/8) ne fait pas l'affaire)
#bonne question 
y3=seq(0,16, length.out = 8)
#2) Extraire de y 3 :
#  a) un vecteur composé du 4ème puis le 7ème élément.
y3extr1 <- y3[c(4,7)]
# b) tous les élements sauf le 7ème
y3extr2 <- y3[-c(7)]
#3) Comparer les commandes suivantes :
#vecteur y0 transformé en matrice de 3 lignes et 8 collones remplie par les collones
matrix(y0, 3, 8)
#pareil qu'au dessus mais cette fois par les lignes
matrix(y0, 3, 8, byrow=TRUE)
#affiche une matrice m à partir du vecteur y0 de sorte qu'il y ait 4 lignes
(m=matrix(y0, nrow = 4))
#affiche la coordonnées 3,3 de la matrice
m[3,3]
#affiche toutes les collones des lignes 1 et 3 de m
m[c(1,3),]
#combine les élements par lignes et effectue un transtypage vers le type plus plus précis éléments par éléments
rbind(y2, y3)
rbind(y1, y2)

