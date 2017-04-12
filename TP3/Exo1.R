
#1) Taper les commandes suivantes, que signifient-elles et qu’observe-t-on ?
X <- 1:10
#on tire 7 élément dans un ensemble à 10 éléments de 1 à 10 sans remise
sample(X, 7)
#on tire 7 élément dans un ensemble à 10 éléments de 1 à 10 avec remise
sample(X, 7, replace=TRUE)
#permutation aléatoire de l'ensemble à 10 éléments
sample(X) # Rearangement: permutation (aleatoire)
#permutation aléatoire de l'ensemble à 5 élements
sample(5) # Rearangement: permutation (aleatoire)
#on sauvegarde les éléments de X supérieur stric à 8, il y en a 2 : 9 10 
#et on tire 7 éléments sans remise !erreur ce n'est pas possible
sample(X[X > 8], 7)
#on sauvegarde les éléments de X supérieur stric à 8, il y en a 2 : 9 10 
#et on tire 7 éléments avec remise
sample(X[X > 8], 7, replace=TRUE)
#on sauvegarde les éléments de X supérieur stric à 9, il y en a 1 : 10 
#et on tire 7 éléments sans remise !erreur ce n'est pas possible
sample(X[X > 9], 7)
#on sauvegarde les éléments de X supérieur stric à 10, il y en a 0 
#et on tire 7 éléments sans remise !erreur ce n'est pas possible
sample(X[X > 10], 7)

example(sample)

#Exemple d'application : l'épreuve du lancé de dé
#concidérons dans un premier temps un dé équilibré. On effectue 500 lancers. 
#puis on regarde l'effectif des résultats.
#ensemble de 1 à 6, 500 lancé avec remise
res_DE <- sample(1:6, 500, replace = T)
#on affiche les résultat dans un tableau
table(res_DE)
#dé pipé 
res_DE_pipo<-sample(1:6, 500, replace = T, prob=c(0.5,0.1,0.1,0.1,0.1,0.1))
TAB<-table(res_DE_pipo)
#on réalise le graph de comparaison entre les 2 tableaux de résultats
titre1 ="Fréquences obtenues pour \n 500 lancers de dé équilibré"
titre2 ="Fréquences obtenues pour \n 500 lancers de dé pipé"
#on met les 2 graphiques dans la même "sortie" (1 ligne 2 col)
par(mfrow=c(1,2))
barplot(table(res_DE)/500, main=titre1)
barplot(table(res_DE_pipo)/500, main=titre2)
# Une urne contient 5 boules blanches et 10 boules noires. On consid`ere les deux  ́epreuves
# suivantes :
# E1 - On tire successivement 10 boules dans l’urne, avec remise.
# E2 - On tire successivement 10 boules dans l’urne, sans remise.

#Simuler une r ́ealisation de chacune des deux  ́epreuves avec la fonction sample. On repr ́esentera
#une boule blanche par le chiffre 1 et une boule noire par le chiffre 0.
X<-c(rep(1,5),rep(0,10))
#E1
res_AR<-sample(X,10,replace=T)
#E2
res_SR<-sample(X,10,replace=F)

# On s’int ́eresse `a la variable X (resp. Y) comptant le nombre de boules blanches tir ́ees lors
# d’une r ́ealisation de l’ ́epreuve E1 (resp. de l’ ́epreuve E2).
# Simuler 500 r ́ealisations de chacune de ces variables en utilisant la fonction sample. Comparer
# suivant le type d’ ́epreuve, le diagramme en barre des fr ́equences observ ́ees avec la distribution
# des lois binomiales et hyperg ́eom ́etriques correpondantes (on utilisera les fonctions dbinom et dhyper).
comptage = function (nBlanches,remise,nbTest)
{
  reTab<-rep(0,length(nBlanches))
  n<-c(rep(1,5),rep(0,10))
  for(j in nBlanches){
      cpt=0
      for(i in 1:nbTest)
      {
        x<-sample(n,10,replace=remise)
        if(sum(x)==j){cpt<-cpt+1}
      }
  reTab[j+1]<-(cpt/nbTest)
  }
  return(reTab)
}
#avec remise
#probabilité théorique, probabilité d'avoir k boules blanches parmi
# 15 boules : 5 blanches, 10 noires, la probabilité d'avoir une boules blanches avec remise est donc 1/3
# donc on a P(X = k) = (k parmi 10)*1/3^k*2/3^(10-k)
#k va de 0 à 5
k<-0:5
theo_AR<-dbinom(k,10,1/3)
exp_AR<-rep(0,length(k))
exp_AR<-comptage(k,TRUE,500)

#sans remise 
#Probabilité théorique, on a une population totale de 15 boules, 
#soit les 5 boules blanches la sous population étudié
#soit 10 la taille de l'échantillon 
#on a ici une loi hypergéométrique X~H(15,5,10)
theo_SR<-dhyper(k,15,5,10)
exp_SR<-rep(0,length(k))
exp_SR<-comptage(k,FALSE,500)
