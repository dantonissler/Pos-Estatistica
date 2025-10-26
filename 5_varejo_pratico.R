# Bloco 5 - Caso Prático: Varejo Online
library(dplyr)
library(ggplot2)

set.seed(123)
pedidos <- data.frame(
  data = seq(as.Date("2024-01-01"), by="day", length.out=60),
  regiao = sample(c("Sul", "Nordeste", "Sudeste", "Centro-Oeste"), 60, replace=TRUE),
  tempo_entrega = rnorm(60, mean=4, sd=1),
  avaliacao_cliente = runif(60, min=1, max=5)
)

resumo <- pedidos %>% group_by(regiao) %>% summarise(
  media_tempo = mean(tempo_entrega),
  mediana_tempo = median(tempo_entrega),
  avaliacao_media = mean(avaliacao_cliente)
)
print(resumo)

ggplot(pedidos, aes(x = tempo_entrega, y = avaliacao_cliente, color = regiao)) +
  geom_point(size=3, alpha=0.7) +
  geom_smooth(method="lm", se=FALSE) +
  labs(title="Tempo de Entrega x Avaliação do Cliente", x="Tempo (dias)", y="Avaliação (1–5)")
