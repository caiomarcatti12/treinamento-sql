# Dia 5: Consultas com SELECT no MySQL

## Parte 1: Introdução ao SELECT

O comando `SELECT` é um dos comandos mais utilizados em SQL. Ele permite que você selecione dados de uma ou mais tabelas.

## Parte 2: Sintaxe do SELECT

A sintaxe básica do comando `SELECT` é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela;
```

Por exemplo:

```sql
SELECT nomeCliente, telefone
FROM Cliente;
```

## Parte 3: Prática de Consultas com SELECT

Vamos praticar consultas em nossas tabelas `Cliente`, `Pet` e `Produto`.

```sql
SELECT nomeCliente, telefone
FROM Cliente;

SELECT nomePet, tipoPet
FROM Pet;

SELECT nomeProduto, preco
FROM Produto;
```

## Parte 4: Utilizando WHERE no SELECT

Frequentemente, queremos fazer consultas mais específicas, não apenas selecionar todos os dados de uma tabela. É aí que entra a cláusula `WHERE`, que nos permite adicionar condições à nossa consulta.

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```

Por exemplo:

```sql
SELECT nomeCliente, telefone
FROM Cliente
WHERE nomeCliente = 'João Silva';
```

## Atividades

1. Faça consultas nas tabelas `Pedido` e `ItemPedido` da loja de pet shop. Experimente utilizar diferentes condições com a cláusula `WHERE`.
2. Faça consultas nas tabelas que você criou para os exemplos do restaurante e da loja online. Experimente utilizar a cláusula `WHERE` para fazer consultas mais específicas.