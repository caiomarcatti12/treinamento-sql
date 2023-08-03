# Dia 14: Modificação de Tabelas com ALTER TABLE

## Parte 1: Introdução ao ALTER TABLE

O comando `ALTER TABLE` é usado para adicionar, modificar ou excluir colunas em uma tabela existente. Também é usado para adicionar e soltar várias restrições de uma tabela existente.

## Parte 2: Adicionando Colunas

Você pode adicionar uma ou mais colunas a uma tabela usando a seguinte sintaxe:

```sql
ALTER TABLE nome_da_tabela
ADD nome_da_coluna tipo_de_dados;
```

### Exemplo:

```sql
ALTER TABLE Cliente
ADD data_nascimento DATE;
```

## Parte 3: Modificando Colunas

A modificação de uma coluna permite alterar o tipo de dados ou o tamanho da coluna. A sintaxe básica é:

```sql
ALTER TABLE nome_da_tabela
MODIFY nome_da_coluna novo_tipo_de_dados;
```

### Exemplo:

```sql
ALTER TABLE Cliente
MODIFY telefone VARCHAR(15);
```

## Parte 4: Excluindo Colunas

Você pode excluir uma ou mais colunas de uma tabela usando o seguinte comando:

```sql
ALTER TABLE nome_da_tabela
DROP nome_da_coluna;
```

### Exemplo:

```sql
ALTER TABLE Cliente
DROP data_nascimento;
```

## Parte 5: Prática de Modificação de Tabelas

Explore o comando `ALTER TABLE` em seu ambiente MySQL, trabalhando com exemplos práticos.

## Atividades

1. Adicione novas colunas em suas tabelas e preencha com dados relevantes.
2. Modifique colunas existentes, alterando o tipo de dados ou tamanho conforme necessário.
3. Exclua colunas que não são mais necessárias em suas tabelas.

## Conclusão

A capacidade de modificar tabelas existentes é essencial para a manutenção e evolução de um esquema de banco de dados. O comando `ALTER TABLE` oferece a flexibilidade necessária para fazer essas mudanças, garantindo que as tabelas continuem atendendo às necessidades em constante mudança do negócio.