# Bloco 3 - Dispersão e Regressão
horas_estudo <- c(2, 3, 5, 7, 9, 10, 4, 6, 8, 3, 5)
notas <- c(70, 75, 80, 85, 88, 90, 78, 82, 86, 76, 84)

plot(horas_estudo, notas, main="Relação entre Horas de Estudo e Notas",
     xlab="Horas de Estudo", ylab="Notas", col="blue", pch=19)
abline(lm(notas ~ horas_estudo), col="red", lwd=2)
