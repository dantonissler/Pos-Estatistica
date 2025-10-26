# Bloco 1 - Criação e Manipulação de Banco de Dados
library(RSQLite)

con <- dbConnect(SQLite(), "empresa.db")

dbExecute(con, "
CREATE TABLE IF NOT EXISTS pedidos (
  id INTEGER PRIMARY KEY,
  cliente TEXT,
  valor REAL,
  data TEXT,
  regiao TEXT
)")

dados <- data.frame(
  cliente = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo"),
  valor = c(150, 200, 350, 120, 500),
  data = c("2024-01-05", "2024-01-07", "2024-01-08", "2024-01-09", "2024-01-10"),
  regiao = c("Sul", "Nordeste", "Sudeste", "Sul", "Centro-Oeste")
)
dbWriteTable(con, "pedidos", dados, append = TRUE)
print(dbGetQuery(con, "SELECT * FROM pedidos"))
dbDisconnect(con)
