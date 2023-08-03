# Dia 15: Outras Funções Básicas no MySQL

## Parte 1: Funções de Data e Hora

O MySQL oferece várias funções para trabalhar com data e hora, permitindo manipulações e cálculos eficazes.

### Funções Principais:

- **NOW()**: Retorna a data e a hora atuais.
- **CURDATE()**: Retorna a data atual.
- **CURTIME()**: Retorna a hora atual.
- **DATE()**: Extrai a data de um valor de data e hora.
- **DATE_ADD(date, INTERVAL expr unit)**: Adiciona um intervalo à data especificada.
- **DATE_SUB(date, INTERVAL expr unit)**: Subtrai um intervalo da data especificada.

#### Exemplos:

```sql
SELECT NOW(); 
SELECT DATE_ADD('2023-01-01', INTERVAL 5 DAY);
SELECT DATE_SUB('2023-01-01', INTERVAL 5 DAY);
```

#### Exemplos de Uso em Queries:

1. **Encontrar Pedidos Feitos nos Últimos 7 Dias**:
    ```sql
    SELECT * FROM Pedidos
    WHERE data_pedido >= DATE_SUB(CURDATE(), INTERVAL 7 DAY);
    ```

2. **Calcular a Data de Expiração com 30 Dias a Partir da Data de Compra**:
    ```sql
    SELECT id_compra, DATE_ADD(data_compra, INTERVAL 30 DAY) AS data_expiracao
    FROM Compras;
    ```

3. **Encontrar Clientes com Aniversários nos Próximos 10 Dias**:
    ```sql
    SELECT nome_cliente FROM Clientes
    WHERE DATE_ADD(data_nascimento, INTERVAL YEAR(CURDATE()) - YEAR(data_nascimento) + IF(DAYOFYEAR(CURDATE()) > DAYOFYEAR(data_nascimento), 1, 0) YEAR)
    BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 10 DAY);
    ```

## Parte 2: Funções Matemáticas

O MySQL inclui uma variedade de funções matemáticas, como:

- **ROUND()**: Arredonda um número.
- **CEIL()**: Retorna o menor inteiro maior ou igual ao número.
- **FLOOR()**: Retorna o maior inteiro menor ou igual ao número.

#### Exemplo:

```sql
SELECT ROUND(123.4567, 2), CEIL(123.4567), FLOOR(123.4567);
```

## Parte 3: Funções de String

O MySQL também fornece funções para trabalhar com strings:

- **CONCAT()**: Concatena duas ou mais strings.
- **LENGTH()**: Retorna o comprimento de uma string.
- **UPPER()**: Converte uma string para maiúsculas.
- **LOWER()**: Converte uma string para minúsculas.

#### Exemplo:

```sql
SELECT CONCAT('MySQL', ' ', 'Rocks!'), LENGTH('MySQL'), UPPER('mysql'), LOWER('MySQL');
```

## Atividades

1. Explore e pratique as funções de data e hora em seu banco de dados, utilizando exemplos do mundo real.
2. Experimente as funções matemáticas para realizar cálculos e arredondamentos.
3. Utilize as funções de string para manipular e transformar texto.

## Conclusão

As funções básicas adicionais em MySQL são poderosas e oferecem ampla flexibilidade na manipulação de data e hora, cálculos matemáticos e manipulação de strings. Essas funções são essenciais para a construção de consultas complexas e robustas, permitindo um gerenciamento de dados eficiente e eficaz.