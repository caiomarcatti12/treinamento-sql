# Dia 9: Junções (Joins) no MySQL

## Parte 1: Introdução às Junções

Junções são usadas para combinar linhas de duas ou mais tabelas com base em uma coluna relacionada entre elas.

### Tipos de Junções:

1. **INNER JOIN:** Retorna apenas as linhas que têm valores correspondentes em ambas as tabelas.
2. **LEFT JOIN:** Retorna todas as linhas da tabela à esquerda e as linhas correspondentes da tabela à direita.
3. **RIGHT JOIN:** Retorna todas as linhas da tabela à direita e as linhas correspondentes da tabela à esquerda.

## Parte 2: INNER JOIN

### Sintaxe:

```sql
SELECT colunas
FROM tabela1
INNER JOIN tabela2
ON tabela1.colunaX = tabela2.colunaY;
```

### Exemplo:

```sql
SELECT Cliente.nomeCliente, Pedido.dataPedido
FROM Cliente
INNER JOIN Pedido
ON Cliente.idCliente = Pedido.idCliente;
```

## Parte 3: LEFT JOIN

### Sintaxe:

```sql
SELECT colunas
FROM tabela1
LEFT JOIN tabela2
ON tabela1.colunaX = tabela2.colunaY;
```

### Exemplo:

```sql
SELECT Cliente.nomeCliente, Pedido.dataPedido
FROM Cliente
LEFT JOIN Pedido
ON Cliente.idCliente = Pedido.idCliente;
```


## Parte 3: RIGHT JOIN

### Sintaxe:

```sql
SELECT colunas
FROM tabela1
RIGHT JOIN tabela2
ON tabela1.colunaX = tabela2.colunaY;
```

### Exemplo:

```sql
SELECT Cliente.nomeCliente, Pedido.dataPedido
FROM Cliente
RIGHT JOIN Pedido
ON Cliente.idCliente = Pedido.idCliente;
```

## Parte 4: Prática com Junções

Vamos explorar diferentes cenários de junções com as tabelas `Cliente`, `Pedido`, `Produto`, e outras tabelas criadas.

## Atividades

1. Utilize INNER JOIN para combinar dados de clientes e pedidos.
2. Utilize LEFT JOIN para encontrar todos os clientes e seus pedidos, incluindo aqueles que não fizeram pedidos.
3. Utilize RIGHT JOIN para encontrar todos os pedidos.
4. Explore outras junções com suas tabelas e consulte os dados correspondentes.
5. Desafio: tente combinar três ou mais tabelas usando junções.

## Conclusão

As junções são fundamentais para combinar dados de várias tabelas, criando vistas mais complexas e completas da informação armazenada. A prática com diferentes tipos de junções ajudará você a entender quando e como usá-las em diferentes situações.