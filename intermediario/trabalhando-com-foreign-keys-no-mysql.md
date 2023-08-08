# Trabalhando com Foreign Keys no MySQL

## Parte 1: Introdução às Foreign Keys

Uma chave estrangeira (Foreign Key) é uma coluna ou combinação de colunas que é usada para estabelecer e impor uma relação entre os dados em duas tabelas para controlar os dados que podem ser armazenados na coluna da chave estrangeira. Ela cria uma relação de integridade referencial entre duas tabelas.

## Parte 2: Sintaxe de Criação de Foreign Keys

Você pode definir uma chave estrangeira ao criar uma tabela ou posteriormente usando o comando `ALTER TABLE`. Aqui está a sintaxe básica:

```sql
CREATE TABLE nome_da_tabela (
  coluna1 tipo_de_dado,
  coluna2 tipo_de_dado,
  ...
  FOREIGN KEY (coluna_fk) REFERENCES outra_tabela(coluna_referenciada)
);
```

### Exemplo:

```sql
CREATE TABLE Pedido (
  idPedido INT PRIMARY KEY,
  idCliente INT,
  dataPedido DATE,
  FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);
```

## Parte 3: Usando ALTER TABLE para Adicionar uma Foreign Key

Você também pode adicionar uma chave estrangeira a uma tabela existente usando o comando `ALTER TABLE`. 

### Exemplo:

```sql
ALTER TABLE Pedido
ADD FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente);
```

## Parte 4: Deletando uma Foreign Key

Para deletar uma chave estrangeira, você pode usar o comando `ALTER TABLE` juntamente com a cláusula `DROP FOREIGN KEY`.

### Exemplo:

```sql
ALTER TABLE Pedido
DROP FOREIGN KEY nome_da_chave_estrangeira;
```

## Parte 5: Prática de Foreign Keys

Explore os conceitos acima em seu ambiente MySQL, trabalhando com exemplos práticos.

### Atividades:

1. Crie duas tabelas relacionadas através de uma chave estrangeira.
2. Adicione uma chave estrangeira a uma tabela existente.
3. Tente inserir dados que violem a integridade referencial e observe o que acontece.
4. Delete uma chave estrangeira e observe como isso afeta a integridade referencial.

## Conclusão:

As chaves estrangeiras são fundamentais para manter a integridade referencial entre as tabelas em um banco de dados relacional. Elas garantem que os dados em diferentes tabelas correspondam, permitindo que você construa relações mais complexas e precisas entre os dados.