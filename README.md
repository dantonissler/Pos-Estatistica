Claro! Aqui está o `README.md` completo e atualizado — pronto para copiar e colar no repositório 👇

---

# 🧠 Testes com Bancos de Dados — MySQL & MongoDB

Ambiente Docker para testes com **MySQL** e **MongoDB**, integrados ao **R** para análise e visualização.

## 📂 Estrutura

```
r_estatistica_pratica/
├── scripts/
│   ├── 1_banco_dados.R
│   ├── 2_estatistica_descritiva.R
│   ├── 3_dispersao_regressao.R
│   ├── 4_visualizacao.R
│   ├── 5_varejo_pratico.R
│   └── 6_custo_beneficio.R
├── database_test/
│   ├── docker-compose.yml
│   ├── mysql/
│   │   ├── Dockerfile
│   │   └── init.sql
│   ├── mongodb/
│   │   ├── Dockerfile
│   │   └── init-mongo.js
│   └── scripts/
│       ├── connect_mysql.R
│       ├── connect_mongo.R
│       └── graficos_comparativos.R
├── data/
└── README.md
```

---

## 🐳 Como usar

1. Suba os containers Docker:

   ```bash
   docker-compose up -d
   ```
2. Abra o projeto no **RStudio** e execute os scripts:

   * `connect_mysql.R`
   * `connect_mongo.R`
   * `graficos_comparativos.R`

Os scripts se conectarão automaticamente aos bancos de dados e gerarão gráficos com as análises comparativas entre os dados do **MySQL** e do **MongoDB**.

---

## 🔧 Dependências R

Antes de rodar os scripts, instale os pacotes necessários:

```r
install.packages(c("RMariaDB", "mongolite", "ggplot2", "dplyr"))
```

---

## 🚀 Execução

1. Execute os scripts em ordem numérica dentro da pasta `scripts/`.
2. Após o ambiente estar rodando, o R conectará aos containers e:

   * Consultará os dados de funcionários no MySQL.
   * Consultará os dados de vendas no MongoDB.
   * Gerará gráficos automáticos de análise e comparação.

---

## 📘 Blocos de Estudo

| Nº | Tema                       | Conceitos                                       |
| -- | -------------------------- | ----------------------------------------------- |
| 1  | **Banco de Dados**         | Criação e manipulação (RSQLite, MySQL, MongoDB) |
| 2  | **Estatística Descritiva** | Média, mediana, variância, desvio-padrão        |
| 3  | **Dispersão e Regressão**  | Correlação e ajuste linear                      |
| 4  | **Visualização**           | `ggplot2` (histogramas, dispersão e barras)     |
| 5  | **Varejo Online**          | Análise de desempenho e vendas                  |
| 6  | **Custo-Benefício**        | Comparação entre estratégias de investimento    |

---

## 💡 Observações

* O ambiente foi projetado para ensino e prática de **integração R + Banco de Dados + Estatística**.
* Os containers Docker inicializam com dados **mockados** para testes imediatos.
* Você pode alterar ou expandir as tabelas e coleções conforme necessário.

---

Deseja que eu adicione um **bloco final com gráficos gerados automaticamente** (ex: capturas salvas em `/output`) para documentar os resultados também no README?
