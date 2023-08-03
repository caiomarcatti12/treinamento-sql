# Dia 12: Criação de Tabelas Temporárias com Sub-SELECTs

## Parte 1: Introdução às Tabelas Temporárias

Tabelas temporárias são usadas para armazenar dados temporariamente. Podem ser úteis para armazenar resultados intermediários, melhorar a performance, simplificar consultas complexas, entre outras coisas. Uma maneira de criar tabelas temporárias é através do uso de sub-SELECTs na cláusula FROM.

## Parte 2: Quando Usar Tabelas Temporárias

Tabelas temporárias são ideais para:
- Dividir consultas complexas em partes mais gerenciáveis.
- Melhorar a performance ao reduzir repetições de cálculos complexos.
- Organizar a lógica da consulta, tornando-a mais legível.

## Parte 3: Exemplos Práticos

### Exemplo 1: Média Salarial por Departamento

```sql
SELECT temp.departamento_nome, temp.media_salario
FROM (SELECT d.nome AS departamento_nome, AVG(f.salario) AS media_salario 
      FROM Funcionarios f
      JOIN Departamentos d ON f.departamento_id = d.id
      GROUP BY d.id) AS temp;
```

### Exemplo 2: Total de Vendas por Produto

```sql
SELECT temp.produto_nome, temp.total_vendas
FROM (SELECT p.nome AS produto_nome, SUM(v.quantidade) AS total_vendas 
      FROM Produtos p
      JOIN Vendas v ON p.id = v.produto_id
      GROUP BY p.id) AS temp;
```

## Atividades

1. Crie uma tabela temporária para encontrar os clientes que mais compraram em uma determinada categoria.
2. Utilize uma tabela temporária para calcular o lucro total por vendedor, considerando vendas e comissões.
3. Elabore uma consulta que use uma tabela temporária para comparar as vendas deste mês com o mês anterior.
4. Explore outras formas de usar tabelas temporárias em sua base de dados e identifique casos em que elas são úteis.

## Conclusão

A criação de tabelas temporárias através de sub-SELECTs é uma técnica avançada, mas vital, no trabalho com bancos de dados. Ela permite a manipulação de dados complexa de forma eficiente e legível, facilitando a análise e interpretação dos dados. Essa habilidade é indispensável para qualquer profissional de banco de dados que busca criar consultas robustas e eficientes.