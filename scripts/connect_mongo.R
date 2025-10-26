library(mongolite)
library(ggplot2)
library(dplyr)

con <- mongo(collection = "vendas", db = "empresa", url = "mongodb://root:root@localhost:27017/empresa?authSource=admin")
dados <- con$find()
print(head(dados))

resumo <- dados %>%
  group_by(categoria) %>%
  summarise(total_vendido = sum(quantidade * valor))

print(resumo)

ggplot(resumo, aes(x = categoria, y = total_vendido, fill = categoria)) +
  geom_bar(stat="identity") +
  labs(title="Total Vendido por Categoria", x="Categoria", y="Valor Total (R$)")
