# Transações, Controle de Concorrência e Indexação no MySQL

## Parte 1: Introdução às Transações

Uma transação é um grupo lógico de tarefas que são executadas como uma única unidade de trabalho.

### Comandos de Transação:

- `START TRANSACTION`: Inicia uma nova transação.
- `COMMIT`: Salva todas as mudanças feitas durante a transação atual.
- `ROLLBACK`: Reverte a transação atual para o estado inicial.
- `SAVEPOINT`: Define um ponto na transação que você pode rolar de volta para.

### Exemplo:

```sql
START TRANSACTION;
   UPDATE Conta SET saldo = saldo - 100 WHERE idConta = 1;
   UPDATE Conta SET saldo = saldo + 100 WHERE idConta = 2;
ROLLBACK;
```

## Parte 2: Controle de Concorrência

O controle de concorrência lida com situações onde várias operações precisam ser executadas simultaneamente.

### Tipos de Locks:

- **Read Lock**: Permite ler mas não escrever. Adequado quando várias transações precisam ler um recurso simultaneamente, mas nenhuma modificação é permitida.
- **Write Lock**: Permite escrever mas não ler. Adequado quando uma transação precisa ter controle exclusivo sobre um recurso para realizar uma modificação sem interferências.

### Exemplo:

```sql
LOCK TABLES Cliente READ;
SELECT * FROM Cliente WHERE idCliente = 1;
UNLOCK TABLES;
```

## Parte 3: Indexação

A indexação ajuda a acelerar as consultas em um banco de dados.

### Exemplo:

```sql
CREATE INDEX idx_nome
ON Cliente (nomeCliente);
```

## Parte 4: Prática de Transações, Controle de Concorrência e Indexação

Explore os conceitos acima em seu ambiente MySQL, trabalhando com exemplos práticos.

## Atividades

1. Crie uma transação envolvendo várias operações e pratique o uso de `COMMIT` e `ROLLBACK`.
2. Crie índices em diferentes colunas e avalie a performance das consultas.

## Conclusão

Transações, controle de concorrência, e indexação são conceitos avançados essenciais para manter a integridade dos dados e melhorar a performance. Esses conceitos são fundamentais para o desenvolvimento de aplicações robustas e eficientes com bancos de dados.