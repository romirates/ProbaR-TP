x <- c(1,3,5,7)
y <- c(2,3,5,7,11,13)
z <- c(4,-1)
b <- y < 5
47 / 8
# %/% division euclidienne 
47 %/% 8
# %% modulo
47 %% 8

a<- c(2,3)
b<-c(5,6)
#Produit scalaire 
a %*% b
x+2
y*3

#fonction basiques sur les vecteurs
v<-seq(10,60, by=10)
w<-c(20,10,31,31,61,51)
u<-c(5,5,5,32,62,49)
sum(v)#somme
mean(v)#moyenne
min(v)#min
max(v)#max
range(v)#min et max du vector dans un vect 2D
sd(v)#écart-type
median(v)#médianne
length(v)#Taile du vecteur
str(v)#affichage simple
is.na(v)#indique si il y a des valeurs manquantes

#ajout de NA (Not Available)
v_<- c(NA,v,NA,NA)
sum(is.na(v_))
# na.rm = T -> on ne tient pas compte des NA (T = TRUE, F = FALSE)
range(v_, na.rm = TRUE)

#statistiques simples sur les vectors
#quartiles de v, 4 paquets d'effectifs égaux  
#suivant une certaine loi définissant les frontières 
quantile(v)

#détermination de frontière : "loi pareto"
quantile(v, probs = c(0,0.1,0.9,1))

#Resumé des différentes données importantes du vecteur
summary(v)

#correlation linaire entre 2 vecteurs
cor(v,w)
#tri 
sort(w)
sort(w, decreasing = T)#decroissant
#ordre : designe l'ordre des éléments dans le vecteurs sans les trier
order(w)
#rank : permet de définir le même numéro d'ordre pour des valeurs égales 
rank(w, ties.method = "min")#ex : places des coureurs dans une course à pied

#diverses fonctions avec somme, produit, min et max

#valeurs maximun (minimale) membre à membre
pmax(w,v,u) #pmin(w,v,u)

#sommes cummulées du vecteur : u[n]<-u[n]+u[n-1]
cumsum(v)

#produits cummulées du vecteur : u[n]<-u[n]*u[n-1]
cumprod(v)
#max (min) succésifs u[n]<-max(v[n],v[n-1])
cummax(w) #cummin(w)
#types de données simples :
#booléens

#définition de vecteurs de booléens
A <- c(F,T,F,T)
B<- c(F,F,T,T)

#Table de vérités : 
#ET
A & B
#OU
A | B
#non-A
!A
#OU-exclusif
xor(A,B)
#=>
!A|B
#etc.

#on peut effectuer un "filtre booléen" sur les membres d'un vecteur 
t <- (v>30) #t contient tout les membres de v > 30
v <- v[(v>30)] #on ne garde que les membres où true a été obtenu

#which : retourne les indices du vecteurs satifaissant la condition
which(v == 30) #trouve les indices pour lesquels le membre est égal à 30
which.max(v) #indice du max
which.min(v) #indice du min

#transformation vect bool -> vect int
as.integer(A)
#all : toutes les valeurs satifont la condition
all(v > 3)
#any : au moins une satisfait la condition
any(v < 3)

#les ensembles

#unique : supprime la redondance dans le vecteur
H<-unique(c("e","f","g","h","h","h"))

P<-c("e","f","g","h")
Q<-c("g","h","i","j")
#union
union(P,Q)

#intersection
intersect(P,Q)
#différence (non symétrique)

setdiff(P,Q)
setdiff(Q,P)

#différence symétrique
union(setdiff(P,Q),setdiff(Q,P))

#appartenance membre à membre d'un premier ensemble à un autre ensemble
#retourne un vecteur de booléen réprésentant si le i-ème membre de l'ensemble A appartient à l'ensemble B

H %in% P
P %in% H
#Les listes
#réalité algorithmique : dictionaire "clé-valeur" (hashmap ?)

#liste clé-valeur
l <- list (nom = "Dupond", 
           age = 25,
           vect = v)
#valeurs
l&nom
l&age
l&vect

#accés par indice dans une liste
l[[1]]
l[[2]]
l[[3]]
#les facteurs 
#classes non ordonnées
coul <- factor(c("bleu","vert",
                 "rouge","bleu","vert"))# facteur = pas d'ordre
coul
z
c(z)
c(z,z)
w <- c(x,y)
(w <- c(x,y))
x+z
x+y
b
!b
y>7
y[y>7]
y[b]
x[b]
sum(x>5)
sum(x[x>5])
sum( x>5 | x<3)
x > 5 & x < 3
sum(x > 5 & x < 3)
y[3]
y[-3]
y[x]
class(x)
class(b)
as.integer(b)
is.numeric(x)