# Funções e Procedimentos Armazenados no MySQL

## Parte 1: Introdução às Funções e Procedimentos Armazenados

- **Funções Armazenadas**: Uma rotina que encapsula um conjunto de instruções SQL e pode retornar um valor. Similar a uma função em linguagens de programação tradicionais.
- **Procedimentos Armazenados**: Uma rotina que encapsula um conjunto de instruções SQL, mas não retorna um valor. Similar a um procedimento ou método em linguagens de programação.

### Diferenças Principais:

- Funções retornam valores, Procedimentos não.
- Funções podem ser usadas dentro de uma consulta SQL, Procedimentos não.

## Parte 2: Criando e Utilizando Funções Armazenadas

### Exemplo de Função:

```sql
DELIMITER //
CREATE FUNCTION CalcularSalarioLiquido(salarioBruto DECIMAL(10, 2))
RETURNS DECIMAL(10, 2)
BEGIN
  DECLARE salarioLiquido DECIMAL(10, 2);
  SET salarioLiquido = salarioBruto * 0.9; -- Dedução de 10% de impostos
  RETURN salarioLiquido;
END;
//
DELIMITER ;

SELECT CalcularSalarioLiquido(1000) AS 'Salário Líquido';
```

## Parte 3: Criando e Utilizando Procedimentos Armazenados

### Exemplo de Procedimento:

```sql
DELIMITER //
CREATE PROCEDURE ListarClientes()
BEGIN
  SELECT * FROM Cliente;
END;
//
DELIMITER ;

CALL ListarClientes();
```

## Parte 4: Prática de Funções e Procedimentos Armazenados

Crie suas próprias funções e procedimentos, utilizando-os em diversas consultas.

## Atividades

1. Escreva uma função para calcular a média de vendas de um produto.
2. Crie um procedimento para inserir um novo cliente no banco de dados.
3. Utilize funções dentro de consultas para transformar ou calcular dados.

## Conclusão

Funções e Procedimentos Armazenados são poderosas ferramentas que permitem encapsular lógica complexa diretamente dentro do banco de dados. Eles promovem a reutilização de código, a modularidade e podem melhorar a performance em certos cenários.