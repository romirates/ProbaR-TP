####################################
#####  EXERCICE 1
####################################
######################
p = function(n) 
{ x = 1:5
  return( prod(n - x)/(n^5) )
  }
#####################
##################
g = function(n)
{ x = 1:n
  z = 0
  v = sample(x, 6, replace=TRUE)
   if ( 6 == length(unique(v)) ) { z = 1}
  return( z )
  }
#############
########################
simule = function(N, n)
{ NV = rep(0, N)
  x = 0
  for (k in 1:N){ NV[k] = g(n)}
  x = sum(NV)/N
  return(x)
  }
######################
########################
set.seed(7486)#initialisation de la graine pour tout les tests
N = 1000 # nombre de testes
nV = 10:99
L = length(nV)
xV =0*nV # Initialisation
yV = 0*nV # Initialisation

#test pour N = 1000

#Changer le xV avec for (i in 1 :L) pour que xV[i] soit simule(N, nV[i])
for(i in 1:L){xV[i] = simule(N,nV[i])}

#Changer yV avec for (i in 1 :L) pour que yV[i] soit la probabilité exacte p(nV[i])
for(i in 1:L){yV[i] = p(nV[i])}

#Faire un plot de (nV,xV) en bleu et de (nV,yV) en rouge dans la même figure.
plot(nV,xV, xlab = "n : cardinal de l'ensemble", ylab = "Probabilité de 6 val. distinctes parmi n (rouge : proba théo./bleu : proba exp.)", col="blue")
points(nV,yV, col="red")

# Calculer la moyenne m de xV - yV. Dans R fonction moyenne est mean()
m<-mean(xV-yV)
#proche de 0 cela veut dire que l'expérience est proche de la théorie

#Calculer la moyenne de (xV − yV − m)^2 , (c’est la variance de xV-yV).
varianceXY<-mean((xV-yV-m)^2)

#répété ces opération avec N = 2000
  N = 2000 # nombre de testes
  set.seed(7486) # remplacer 1374 par 
  nV = 10:99
  L = length(nV)
  xV =0*nV # Initialisation
  yV = 0*nV # Initialisation
  
  #Changer le xV avec for (i in 1 :L) pour que xV[i] soit simule(N, nV[i])
  for(i in 1:L){xV[i] = simule(N,nV[i])}
  
  #Changer yV avec for (i in 1 :L) pour que yV[i] soit la probabilité exacte p(nV[i])
  for(i in 1:L){yV[i] = p(nV[i])}
  
  #Faire un plot de (nV,xV) en bleu et de (nV,yV) en rouge dans la même figure.
  plot(nV,xV, xlab = "n : cardinal de l'ensemble", ylab = "Probabilité de 6 val. distinctes parmi n (rouge : proba théo./bleu : proba exp.)", col="blue")
  points(nV,yV, col="red")
  
  # Calculer la moyenne m de xV - yV. Dans R fonction moyenne est mean()
  m<-mean(xV-yV)
  
  #Calculer la moyenne de (xV − yV − m)^2 , (c’est la variance de xV-yV).
  varianceXY<-mean((xV-yV-m)^2)
  

####################################
####################################
#####  EXERCICE 2
####################################
######################
f = function(m, n)
{ x = 1:n
   v = sample(x, m, replace=FALSE)
   teste = ( v == sort(v)) # sort(v) ordonne v
   z = 0
   if ( m == sum(teste)) { z = 1}
   return( z )
   }
#############
######################
### FONCTION DE SIMULATION: nV  est vectoriel
simuleV = function(N, m, nV)
{ NV = rep(0, N)
   nL = length(nV)
   xV = rep(0, nL)
   for (i in 1:nL){
       for (k in 1:N){ NV[k] = f(m, nV[i])}
       xV[i] = sum(NV)/N }
   return(xV)
  }
#############
########################
  
mV <- 2:8
pV <- 0*mV
l<- length(mV)
nV <- 10:30
N <- 500 # nombre de tests

# Créer un vecteur pV de même taille que mV tel que
# pV[i] = mean( simuleV(N, mV[i], nV) ).
for(i in 1:l){pV[i] <- mean(simuleV(N, mV[i], nV))}

# Creer un vecteur P de meme taille que que mV tel que 
# P[i] = 1/mV[i]! : c’est la probabilité exacte.
P<-1/factorial(mV)

#Calculer le maximum des erreurs en valeurs absolues max( abs(pV - P)))
maxErreur<-max(abs(pV-P))

# Tracer en bleu les points(mV[i], pV[i]) et y ajouter en rouge la courbe (x,y)=(mV, P).
plot(mV, pV, xlab = "Taille de la suite d'entier ordonée", ylab ="Probabilité de la suite (rouge : proba exp. /bleu proba théo.)", col="red")
points(mV,P, col="blue")

#Calculer la moyenne des erreurs |pV[i] -P[i]|
moyErreur<-mean(abs(pV-P))

#Pour N = 1500
N<-1500
for(i in 1:l){pV[i] <- mean(simuleV(N, mV[i], nV))}

#Calculer le maximum de erreurs en valeurs absolues max(|pV - P|)
maxErreur<-max(abs(pV-p))

# Tracer en bleu les points(mV[i], pV[i]) et y ajouter en rouge la courbe (x,y)=(mV, P).
plot(mV, pV, xlab = "Taille de la suite d'entier ordonée", ylab ="Probabilité de la suite (rouge : proba exp. /bleu proba théo.)", col="red")
points(mV,P, col="blue")

#Calculer la moyenne des erreurs |pV[i] -P[i]|
moyErreur<-mean(abs(pV-p))

