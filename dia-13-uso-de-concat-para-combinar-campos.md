# Dia 13: Uso de CONCAT para combinar campos

## Parte 1: Introdução ao uso de CONCAT

O comando `CONCAT` no MySQL é uma função poderosa usada para combinar duas ou mais strings em uma única string. Essa abordagem é frequentemente usada para concatenar valores de diferentes campos.

## Parte 2: CONCAT em Consultas

A função `CONCAT` permite formatar e combinar informações de diferentes campos, melhorando a apresentação dos dados.

### Exemplo:

```sql
SELECT CONCAT(primeiro_nome, ' ', ultimo_nome) AS nome_completo, email
FROM Clientes;
```

Essa consulta vai combinar o `primeiro_nome` e `ultimo_nome` com um espaço entre eles e apresentará como a coluna `nome_completo`.

## Parte 3: Uso Prático de CONCAT

Pratique o uso do `CONCAT` em várias tabelas e campos. Experimente combinar diferentes tipos de dados e observe como o resultado é formatado.

### Atividades

1. **Concatenar Endereço:** Criar uma consulta que combine as colunas `cidade`, `estado`, e `cep` da tabela `Enderecos`, formatando-os como um endereço completo.
2. **Concatenar Somando um Valor:** Concatenar o valor de um campo numérico com uma constante. Por exemplo, adicionar 10% de desconto ao preço de um produto.
3. **Concatenar Montando um INSERT:** Criar uma consulta que combine informações de uma tabela para formar uma instrução INSERT para outra tabela.
4. **Concatenar Montando um UPDATE:** Criar uma consulta que combine informações de uma tabela para formar uma instrução UPDATE, somando um valor qualquer a um campo específico.

Essas atividades exploram diferentes maneiras de utilizar a função `CONCAT`, desde a formatação de strings até a geração dinâmica de consultas SQL. Isso destaca a versatilidade da função e seu valor em diversas aplicações dentro de um banco de dados.

## Conclusão

A função `CONCAT` no MySQL oferece uma maneira eficiente de combinar strings, o que é útil na formatação e apresentação de dados. Compreender como usar essa função é fundamental para criar consultas complexas e relatórios mais informativos. A aula de hoje proporcionou uma introdução clara sobre como utilizar essa função, com exemplos práticos e atividades para fortalecer a compreensão.