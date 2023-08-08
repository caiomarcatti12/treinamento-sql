-- Criando a tabela Categorias
CREATE TABLE Categorias (
  id INT PRIMARY KEY,
  nome VARCHAR(255)
);

-- Inserindo dados na tabela Categorias
INSERT INTO Categorias (id, nome) VALUES (1, 'Eletrônicos');
INSERT INTO Categorias (id, nome) VALUES (2, 'Roupas');

-- Criando a tabela Produtos
CREATE TABLE Produtos (
  id INT PRIMARY KEY,
  categoria_id INT,
  nome VARCHAR(255),
  preco DECIMAL(10, 2),
  FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (id, categoria_id, nome, preco) VALUES (1, 1, 'Smartphone', 500);
INSERT INTO Produtos (id, categoria_id, nome, preco) VALUES (2, 2, 'Camiseta', 20);

-- Criando a tabela Vendas
CREATE TABLE Vendas (
  id INT PRIMARY KEY,
  produto_id INT,
  quantidade INT,
  desconto DECIMAL(5, 2),
  FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

-- Inserindo dados na tabela Vendas
INSERT INTO Vendas (id, produto_id, quantidade, desconto) VALUES (1, 1, 3, 10);
INSERT INTO Vendas (id, produto_id, quantidade, desconto) VALUES (2, 1, 2, 5);
INSERT INTO Vendas (id, produto_id, quantidade, desconto) VALUES (3, 2, 5, 2);
