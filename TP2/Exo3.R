# Exercice 2.3 — (CC 1 2014-2015) Dans un bassin, il y a un nombre inconnu N de poissons.
# Pour estimer le nombre, on capture n < N poissons (sans remise) et on les remet à l’eau après
# avoir marqués. Puis, on capture à nouveau k poissons (toujours sans remise). On s’intéresse à
# la probabilité de l’événement A = {”il y a 3 poissons marqués lors de la deuxième capture”}.
# Fixons n = 10 et k = 5
#1) Pour N = 30, calculer la probabilité de A.
#on utilise la loi hypergéométrique soient :
#N : la population totale
#n : la taille de la sous population (les poissons marqué)
#k : la taille de l'échantillon 
# 1) Pour N = 30, calculer la probabilité de A.
P<-dhyper(3,30,10,5)
# 2) Dessiner P (A) en fonction de N entre 10 et 100 par pas de 1.
x<-10:100
y<-dhyper(3,x,10,5)
plot(x,y,xlab="N", ylab="P(X=3) pour la loi H(N,10,5)", type="h")
# Pour quelles valeurs N, P (A) atteint-il son maximum ?
xmax<-x[which.max(y)]
#3) Même question pour :
#  (n, k) = (10, 10)
P<-dhyper(3,30,10,10)
x<-10:100
y<-dhyper(3,x,10,10)
plot(x,y,xlab="N", ylab="P(X=3) pour la loi H(N,10,10)", type="h")
xmax<-x[which.max(y)]
# (n, k) = (10, 20)
P<-dhyper(3,30,10,20)
x<-10:100
y<-dhyper(3,x,10,20)
plot(x,y,xlab="N", ylab="P(X=3) pour la loi H(N,10,20)", type="h")
xmax<-x[which.max(y)]
#Si vous voyez un message d’avis d’avis, expliquez pourquoi
#on calcule une probabilité avec une loi géométrique ou l'échantillon est plus grand 
# sous population, donc on aura k parmi n avec k>n ce qui vaut 0 à tout les coups

# 4) C’est quoi le lien entre le N que vous avez trouvé et la proportion de poisson marqués
# trouvés dans l’échantillon de k poissons ?
#la population totale N la plus probable pour une proportion donnée de poissons marqué dans un échantillon de K poissons ?
