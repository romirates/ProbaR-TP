# En utilisant des fonctions d ́ej`a impl ́ement ́ees dans R, tracez la fonction de r ́epartition des
# lois suivantes (Indication : utilisez le type ’s’ pour les courbes). Vous pouvez choisir d’utiliser
# soit pXXXX avec XXXX le nom de la loi soit cumsum pour certains appels `a choose :
#une loi binomiale de paramètre n=10 et P=0.5

x<-0:10
#binom(k,n,p) 
y<-pbinom(x,10, 0.25)

plot(x,y,"s", ylab="Répartion de la loi binomiale B(10,0.25)", xlab="K")

#une loi de bernouilli de paramètre p=0.4
x<-0:10
y<-pbinom(x,1,0.4)

plot(x,y,"s", ylab ="Répartion de la loi binomiale B(1,0.4)", xlab="K")

#Une loi hypergéométrique de paramétre m=15, n=11, k=6
x<-0:6
"choose(15, x) choose(11, 6-x) / choose(15+11, 6)"
y<-phyper(x,15,11,6)
plot(x,y,"s", ylab ="Répartion de la loi hypergéométrique H(15,11,6)", xlab="K")


