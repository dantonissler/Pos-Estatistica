library(RMariaDB)
library(ggplot2)
library(dplyr)

con <- dbConnect(MariaDB(), user='root', password='root', dbname='empresa', host='127.0.0.1')
dados <- dbGetQuery(con, "SELECT * FROM funcionarios;")
print(head(dados))

resumo <- dados %>%
  group_by(departamento) %>%
  summarise(media_salario = mean(salario), idade_media = mean(idade))

print(resumo)

ggplot(resumo, aes(x = departamento, y = media_salario, fill = departamento)) +
  geom_bar(stat='identity') +
  labs(title="Média Salarial por Departamento", x="Departamento", y="Salário Médio")

dbDisconnect(con)
