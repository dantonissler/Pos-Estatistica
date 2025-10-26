library(RMariaDB)
library(mongolite)
library(ggplot2)
library(dplyr)

mysql_con <- dbConnect(MariaDB(), user='root', password='root', dbname='empresa', host='127.0.0.1')
mongo_con <- mongo(collection="vendas", db="empresa", url="mongodb://root:root@localhost:27017/empresa?authSource=admin")

func <- dbGetQuery(mysql_con, "SELECT departamento, AVG(salario) AS media_salario FROM funcionarios GROUP BY departamento")
vend <- mongo_con$find('{}', fields='{"categoria":1,"valor":1,"quantidade":1,"_id":0}')

vend <- vend %>%
  group_by(categoria) %>%
  summarise(media_venda = mean(valor * quantidade))

ggplot() +
  geom_bar(data=func, aes(x=departamento, y=media_salario, fill="Salários"), stat="identity", position="dodge") +
  geom_bar(data=vend, aes(x=categoria, y=media_venda, fill="Vendas"), stat="identity", position="dodge") +
  labs(title="Comparativo de Médias: Salários x Vendas", y="Valores Médios (R$)") +
  scale_fill_manual(values=c("Salários"="skyblue", "Vendas"="orange"))
