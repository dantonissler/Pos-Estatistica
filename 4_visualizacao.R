# Bloco 4 - Visualização de Dados com ggplot2
library(ggplot2)

horas_estudo <- c(2, 3, 5, 7, 9, 10, 4, 6, 8, 3, 5)
notas <- c(70, 75, 80, 85, 88, 90, 78, 82, 86, 76, 84)
df <- data.frame(horas_estudo, notas)

ggplot(df, aes(x = notas, fill = ..count..)) +
  geom_histogram(binwidth = 5, color = "black") +
  labs(title = "Distribuição de Notas", x = "Notas", y = "Frequência")

ggplot(df, aes(x = horas_estudo, y = notas)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Dispersão: Horas de Estudo x Nota")
