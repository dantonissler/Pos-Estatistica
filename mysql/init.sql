CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    departamento VARCHAR(50)
);

INSERT INTO funcionarios (nome, idade, cargo, salario, departamento) VALUES
('Ana Souza', 28, 'Analista de Dados', 6500.00, 'TI'),
('Carlos Lima', 35, 'Gerente de Projetos', 9800.00, 'Administração'),
('Juliana Rocha', 24, 'Desenvolvedora', 7200.00, 'TI'),
('Marcos Silva', 40, 'Cientista de Dados', 11000.00, 'TI'),
('Beatriz Costa', 31, 'Recursos Humanos', 6000.00, 'RH');
