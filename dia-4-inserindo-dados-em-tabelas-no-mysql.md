# Dia 4: Inserindo Dados em Tabelas no MySQL

## Parte 1: Introdução à Inserção de Dados

Agora que já sabemos como criar tabelas no MySQL, o próximo passo é aprender a inserir dados nessas tabelas. Para isso, usaremos o comando `INSERT INTO`.

## Parte 2: Sintaxe do `INSERT INTO`

A sintaxe básica do comando `INSERT INTO` é a seguinte:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

Neste comando, `nome_da_tabela` é o nome da tabela onde você deseja inserir dados, `coluna1, coluna2, coluna3, ...` são os nomes das colunas onde você deseja inserir os dados e `valor1, valor2, valor3, ...` são os valores que você deseja inserir.

Por exemplo:

```sql
INSERT INTO Cliente (nomeCliente, telefone)
VALUES ('João Silva', '99999-9999');
```

## Parte 3: Prática de Inserção de Dados

Vamos inserir alguns dados nas tabelas `Cliente`, `Pet` e `Produto` que criamos no dia anterior.

```sql
INSERT INTO Cliente (nomeCliente, telefone)
VALUES ('João Silva', '99999-9999'),
       ('Maria Oliveira', '88888-8888'),
       ('Carlos Souza', '77777-7777');

INSERT INTO Pet (nomePet, tipoPet, idDono)
VALUES ('Rex', 'Cachorro', 1),
       ('Mia', 'Gato', 2),
       ('Tweety', 'Pássaro', 3);

INSERT INTO Produto (nomeProduto, preco)
VALUES ('Ração para cachorro', 50.0),
       ('Ração para gato', 40.0),
       ('Gaiola para pássaro', 150.0);
```

## Atividades

1. Insira dados nas tabelas `Pedido` e `ItemPedido` da loja de pet shop. Lembre-se de que os pedidos devem estar associados a um cliente e os itens do pedido devem estar associados a um produto.
2. Baseando-se nos exemplos do restaurante e da loja online dos dias anteriores, insira dados nas tabelas que você criou para ambos os casos.