a = -3
b = 2
s = 0.25
x = runif(100500) # 50 reels aleatoirs dans ]0, 1[
y = b + a*x + rnorm(100500, sd = sqrt(s)) # Ajout de "bruits" de loi normale 
mean(x) # Valeur theorique: 0.5
mean(y) # Valeur theorique: 2 - 3*0.5 = 0.5
###########
M = matrix(c(x, y),  nrow = 100500, byrow = T)
write.table(M, file="M_datas.txt", row.names=F, col.names=c("x", "y"))
# row.names=F ou row.names=FALSE
plot(x, y, col = "blue")
abline(b, a, col = "red", lwd = 5) # Ajoute la droite y = a*x + b
###########
dev.print(pdf, "M_dataPlot.pdf")
dev.off()