# Dia 6: Atualizando Dados com UPDATE no MySQL

## Parte 1: Introdução ao Comando UPDATE

O comando `UPDATE` permite que você modifique os dados existentes em uma tabela.

### Sintaxe Básica:

```sql
UPDATE nome_da_tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
```

### Exemplo:

```sql
UPDATE Cliente
SET telefone = '123-456-7890'
WHERE idCliente = 1;
```

## Parte 2: Prática de Atualização

Vamos praticar atualizando registros nas tabelas `Cliente`, `Pet`, e `Produto`.

### Exemplos de UPDATE:

```sql
UPDATE Cliente
SET telefone = '987-654-3210'
WHERE nomeCliente = 'Maria Silva';

UPDATE Produto
SET preco = 20.50
WHERE idProduto = 3;
```

## Atividades

1. Atualize os registros em suas tabelas para refletir as mudanças em sua loja de pet shop. Por exemplo, altere os preços dos produtos ou os telefones dos clientes.

## Conclusão

O comando `UPDATE` é uma ferramenta poderosa que permite modificar dados existentes. É essencial usar com cuidado e entender a cláusula `WHERE` para atualizar os registros corretos.
