# Dia 10: Subqueries e Funções de Agregação no MySQL

## Parte 1: Introdução às Subqueries

Uma subquery é uma consulta dentro de outra consulta. Elas são usadas para recuperar dados que serão processados na consulta principal.

### Sintaxe:

```sql
SELECT coluna1, coluna2, ...
FROM tabela
WHERE coluna operador (SELECT coluna FROM tabela WHERE condição);
```

### Exemplo:

```sql
SELECT nomeCliente
FROM Cliente
WHERE idCliente IN (SELECT idCliente FROM Pedido WHERE valorTotal > 100);
```

## Parte 2: Funções de Agregação

As funções de agregação realizam um cálculo em um conjunto de valores e retornam um único valor.

### Principais Funções de Agregação:

- `COUNT()`: Conta o número de linhas.
- `SUM()`: Soma os valores.
- `AVG()`: Calcula a média dos valores.
- `MIN()`: Retorna o valor mínimo.
- `MAX()`: Retorna o valor máximo.

### Exemplo:

```sql
SELECT COUNT(produto), AVG(preco), MAX(preco), MIN(preco)
FROM Produto;
```

## Parte 3: Combinando Subqueries e Funções de Agregação

Podemos combinar subqueries com funções de agregação para fazer consultas mais complexas.

### Exemplo:

```sql
SELECT nomeCliente, (SELECT SUM(valorTotal) FROM Pedido WHERE Cliente.idCliente = Pedido.idCliente) AS totalGasto
FROM Cliente;
```

## Parte 4: Subqueries no FROM
Subqueries podem ser usados na cláusula FROM para criar uma tabela temporária para uma consulta.

## Parte 5: Prática de Subqueries e Funções de Agregação

Vamos explorar diferentes cenários com as tabelas `Cliente`, `Pedido`, `Produto`, entre outras, usando subqueries e funções de agregação.

## Atividades

1. Utilize subqueries para encontrar clientes que fizeram compras acima de um valor específico.
2. Use funções de agregação para calcular a média, soma, min e max de determinadas colunas.
3. Combine subqueries e funções de agregação para criar consultas complexas.
4. Explore mais exemplos usando essas técnicas.

## Conclusão

Subqueries e funções de agregação são ferramentas poderosas que permitem fazer consultas complexas e agregações de dados. A prática com esses conceitos ajudará você a manipular dados de maneira mais eficiente e a entender como recuperar informações precisas de suas tabelas.