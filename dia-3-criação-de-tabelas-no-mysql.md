# Dia 3: Criação de Tabelas no MySQL

## Parte 1: Introdução à Criação de Tabelas

As tabelas são a espinha dorsal de qualquer banco de dados relacional, e a linguagem SQL fornece uma variedade de comandos para lidar com elas. Neste módulo, vamos explorar o comando `CREATE TABLE` e como ele é usado para criar novas tabelas no MySQL.

## Parte 2: Sintaxe do `CREATE TABLE`

A sintaxe básica do comando `CREATE TABLE` é a seguinte:

```sql
CREATE TABLE nome_da_tabela (
    nome_da_coluna1 tipo_de_dado,
    nome_da_coluna2 tipo_de_dado,
    ...
);
```

Neste comando, `nome_da_tabela` representa o nome que você deseja dar à sua tabela, `nome_da_coluna` representa o nome que você deseja dar a cada coluna em sua tabela e `tipo_de_dado` representa o tipo de dado que cada coluna vai armazenar.

Por exemplo:

```sql
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT,
    nomeCliente VARCHAR(100),
    telefone VARCHAR(15),
    PRIMARY KEY (idCliente)
);
```

## Parte 3: Tipos de Dados em MySQL

O MySQL suporta vários tipos de dados que podem ser usados ao criar suas tabelas. Alguns dos mais comuns incluem:

- `INT`: para números inteiros.
- `VARCHAR(n)`: para strings de texto com comprimento variável, até `n` caracteres.
- `DATE`: para datas.
- `FLOAT`: para números com pontos decimais.

## Parte 4: Prática de Criação de Tabelas

Vamos criar as tabelas `Cliente`, `Pet` e `Produto` usando o comando `CREATE TABLE`.

```sql
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT,
    nomeCliente VARCHAR(100),
    telefone VARCHAR(15),
    PRIMARY KEY (idCliente)
);

CREATE TABLE Pet (
    idPet INT AUTO_INCREMENT,
    nomePet VARCHAR(100),
    tipoPet VARCHAR(50),
    idDono INT,
    PRIMARY KEY (idPet),
    FOREIGN KEY (idDono) REFERENCES Cliente(idCliente)
);

CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT,
    nomeProduto VARCHAR(100),
    preco FLOAT,
    PRIMARY KEY (idProduto)
);
```

## Atividades

1. Crie as tabelas `Pedido` e `ItemPedido` para a loja de pet shop. Considere quais colunas e tipos de dados são necessários para estas tabelas.
2. Baseando-se no exemplo do restaurante e da loja online do dia anterior, crie as tabelas necessárias para ambos os casos.