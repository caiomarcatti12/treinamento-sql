# Procedimentos Armazenados e Triggers no MySQL

## Parte 1: Procedimentos Armazenados

- **Definição**: Um procedimento armazenado é uma sequência predefinida de comandos, armazenada no próprio banco de dados.
- **Vantagens**: Reduz a quantidade de informação enviada ao servidor, melhora o desempenho e permite modularidade.

### Exemplo de Procedimento Armazenado:

```sql
DELIMITER //
CREATE PROCEDURE ListarClientes(IN nomeFiltro VARCHAR(255))
BEGIN
  SELECT * FROM Clientes  WHERE sobrenome = nomeFiltro;
END //
DELIMITER ;
```

- **Execução**:

```sql
CALL ListarClientes('Silva');
```

## Parte 2: Triggers

- **Definição**: Triggers são procedimentos especiais que são executados quando ocorre um evento específico (INSERT, UPDATE, DELETE).
- **Utilidade**: Manter a integridade dos dados, atualizar automaticamente os campos, entre outros.

### Exemplo de Trigger:

```sql
DELIMITER //
CREATE TRIGGER atualizar_log
BEFORE UPDATE ON Clientes
FOR EACH ROW 
BEGIN
  INSERT INTO Log_atualizacao(cliente_id_antigo, cliente_id_novo, data_atualizacao) 
  VALUES (OLD.id, NEW.id, NOW());
END;
//
DELIMITER ;
```

```sql
CREATE TRIGGER registrar_exclusao
AFTER DELETE ON Clientes
FOR EACH ROW 
BEGIN
  INSERT INTO Log_exclusoes(cliente_id, data_exclusao) VALUES (OLD.id, NOW());
END;
```

```sql
CREATE TRIGGER registrar_exclusao
AFTER DELETE ON Clientes
FOR EACH ROW 
BEGIN
  INSERT INTO Log_exclusoes(cliente_id, data_exclusao) VALUES (OLD.id, NOW());
END;
```

```sql
DELIMITER //
CREATE TRIGGER definir_desconto
BEFORE INSERT ON Clientes
FOR EACH ROW 
BEGIN
  IF NEW.tipo_cliente = 'Estudante' THEN
    SET NEW.desconto = 10;
  END IF;
END;
//
DELIMITER ;
```

## Parte 3: Prática com Procedimentos e Triggers

- Prática de criação de procedimentos armazenados.
- Prática de criação e gerenciamento de triggers.

## Atividades

1. Crie um procedimento armazenado para listar produtos de uma categoria específica.
2. Crie um trigger que registre todas as exclusões de produtos em uma tabela de log.

## Conclusão

Procedimentos armazenados e triggers são ferramentas poderosas para automação e integridade dos dados. Eles fornecem eficiência, segurança e manutenibilidade no gerenciamento de bancos de dados.