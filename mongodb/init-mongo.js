db = db.getSiblingDB('empresa');

db.vendas.insertMany([
  { produto: "Notebook", categoria: "Eletrônicos", quantidade: 10, valor: 5500, regiao: "Sul" },
  { produto: "Celular", categoria: "Eletrônicos", quantidade: 25, valor: 2500, regiao: "Sudeste" },
  { produto: "Cadeira", categoria: "Móveis", quantidade: 15, valor: 400, regiao: "Centro-Oeste" },
  { produto: "Mesa", categoria: "Móveis", quantidade: 8, valor: 900, regiao: "Nordeste" },
  { produto: "Monitor", categoria: "Eletrônicos", quantidade: 12, valor: 1200, regiao: "Sul" }
]);
