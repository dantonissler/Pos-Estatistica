# Bloco 6 - Análise de Custo-Benefício
library(ggplot2)

estrategia <- data.frame(
  tipo = c("Antiga", "Nova"),
  custo_medio = c(10000, 8500),
  tempo_medio = c(4.5, 3.8),
  satisfacao_media = c(3.9, 4.4)
)

ggplot(estrategia, aes(x = tipo, y = custo_medio, fill = tipo)) +
  geom_bar(stat = "identity") +
  labs(title = "Comparação de Custo Médio entre Estratégias")

ggplot(estrategia, aes(x = tipo, y = satisfacao_media, fill = tipo)) +
  geom_bar(stat = "identity") +
  labs(title = "Satisfação Média por Estratégia")
