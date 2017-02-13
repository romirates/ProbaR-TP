#Exercice 1.9 — On distribue d’un jeu de 32 cartes, une main de 5 cartes.
#1) Combien y a-t-il de mains possibles ?
mainPossible <-choose(32, 5)
#2) Quel est le nombre de mains contenant deux rois exactement ?
main2roi <- choose(4,2)*choose(28,3)
#3) Quel est le nombre de mains contenant au moins deux rois ?
main2roiaumoin<-choose(4,2)*choose(30,3)
#4) Quel est le nombre de mains contenant au plus trois carreaux ?
#2 cartes parmis les cartes non carreaux 32 - 8 = 24 cartes et 3 cartes parmis les cartes restante
#donne un nombre supérieur au nombres de mains possibles 
auplus3carreaux<-choose(24,2)*choose(30,3)

#5) Quel est le nombre de mains contenant cinq cartes de la même couleur?
couleur<-choose(8,5)*4
#3) Combien de chances a-t-on de gagner le super jackpot à l’euromillion? (5 numéros parmi 49, et 2 numéros étoilés parmi 10, l’ordre ne compte pas).
euromillion<- choose(49, 5)*choose(10, 2)
