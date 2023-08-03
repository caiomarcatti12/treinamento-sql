# Dia 7: Deletando Dados com DELETE no MySQL

## Parte 1: Introdução ao Comando DELETE

Para excluir dados de uma tabela, você pode usar o comando `DELETE`.

### Sintaxe Básica:

```sql
DELETE FROM nome_da_tabela WHERE condição;
```

### Exemplo:

```sql
DELETE FROM Cliente
WHERE idCliente = 1;
```

## Parte 2: Prática de Deleção

Vamos praticar deletando registros nas tabelas `Cliente`, `Pet`, e `Produto`.

### Exemplos de DELETE:

```sql
DELETE FROM Pet
WHERE idPet = 2;

DELETE FROM Produto
WHERE categoria = 'Brinquedos';
```

## Atividades

1. Delete registros específicos das tabelas que você criou. Por exemplo, exclua produtos descontinuados ou clientes inativos.

## Nota de Atenção

A utilização do `DELETE` requer atenção e cuidado. A falta de condição ou uma condição errada pode levar à exclusão de todos os registros da tabela.

## Conclusão

O comando `DELETE` é usado para excluir registros do banco de dados. É uma operação irreversível, então deve ser usada com cautela. Compreender e aplicar corretamente a cláusula `WHERE` é crucial para evitar erros graves.