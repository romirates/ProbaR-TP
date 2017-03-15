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
N = 1000 # nombre de testes
set.seed(1374) # remplacer 1374 par 
# les 4 derniers chiffres de votre code ETUDIANT,
# en enlevant \'eventuellement z\'ero quand il est en premi\`ere position)
nV = 10:99
L = length(nV)
xV =0*nV # Initialisation
yV = 0*nV # Initialisation
# A completer
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
   if ( m == sum(teste) ) { z = 1 }
   return( z )
   }
#############
######################
### FONCTION DE SIMULATION: nV  est vectoriel
simule = functionV(N, m, nV)
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
mV = 2:8
nV = 10:30
N = 500 # nombre de testes
set.seed(1374) # remplacer 1374 par 
# les 4 derniers chiffres de votre code ETUDIANT,
# en enlevant \'eventuellement z\'ero quand il est en premi\`ere position).
# A completer
