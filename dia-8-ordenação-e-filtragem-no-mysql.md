# Dia 8: Ordenação e Filtragem no MySQL

## Parte 1: Ordenação com ORDER BY

O comando `ORDER BY` permite que você ordene os resultados de uma consulta em ordem ascendente ou descendente.

### Sintaxe:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
ORDER BY colunaX [ASC | DESC];
```

### Exemplo:

```sql
SELECT nomeCliente, idade
FROM Cliente
ORDER BY idade DESC;
```

## Parte 2: Filtragem com LIMIT

O comando `LIMIT` pode ser usado para limitar o número de registros retornados em uma consulta.

### Sintaxe:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
LIMIT número;
```

### Exemplo:

```sql
SELECT nomeProduto, preco
FROM Produto
LIMIT 5;
```

## Parte 3: Combinação de Ordenação e Filtragem

Você pode combinar `ORDER BY` e `LIMIT` para filtrar e ordenar os registros de maneira eficaz.

### Exemplo:

```sql
SELECT nomeCliente, idade
FROM Cliente
ORDER BY idade DESC
LIMIT 3;
```

## Parte 4: Prática de Ordenação e Filtragem

Vamos explorar diferentes cenários de ordenação e filtragem com as tabelas `Cliente`, `Pet`, `Produto`, e outras tabelas criadas.

## Atividades

1. Ordene os produtos por preço, tanto em ordem crescente quanto decrescente.
2. Utilize o `LIMIT` para obter os top 5 produtos mais caros.
3. Combine `ORDER BY` e `LIMIT` para encontrar os 3 clientes mais velhos.
4. Experimente outros cenários de ordenação e filtragem com suas tabelas.

## Conclusão

A ordenação e filtragem são ferramentas essenciais para fazer consultas precisas e significativas. A prática desses comandos o ajudará a entender melhor como recuperar dados de maneira eficiente.