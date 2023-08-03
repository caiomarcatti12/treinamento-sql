# Dia 0: Apresentação do Treinamento e Preparação do Ambiente

## Parte 1: Introdução ao Treinamento

Bem-vindos ao treinamento em MySQL! Nesta jornada, vamos explorar conceitos fundamentais de bancos de dados relacionais, com foco no MySQL. Vamos aprender a criar, consultar, atualizar e gerenciar dados em várias tabelas, além de trabalhar com funções e recursos avançados.

## Parte 2: Configurando o GitHub

### 2.1 Criando uma Conta no GitHub

1. Acesse [GitHub](https://github.com).
2. Clique em "Sign Up."
3. Preencha os detalhes e siga as instruções para criar sua conta.

### 2.2 Vinculando a Chave SSH

1. Abra o terminal (Linux/Mac) ou Git Bash (Windows).
2. Gere uma chave SSH usando o comando: `ssh-keygen -t rsa -b 4096 -C "seu_email@example.com"`.
3. Vá até as Configurações do GitHub -> SSH and GPG keys -> New SSH key.
4. Cole a chave pública (geralmente em `~/.ssh/id_rsa.pub`) e salve.

### 2.3 Criando um Repositório

1. Clique em "New" no GitHub.
2. Nomeie o repositório e escolha a visibilidade.
3. Clique em "Create repository."

### 2.4 Clonando o Repositório

1. Copie a URL SSH do repositório.
2. No terminal, execute: `git clone URL_DO_REPOSITÓRIO`.

### 2.5 Fazendo um Commit

1. Navegue até o diretório clonado: `cd nome_do_repositório`.
2. Crie ou modifique arquivos.
3. Adicione os arquivos ao stage: `git add .`.
4. Faça um commit: `git commit -m "Sua mensagem de commit"`.
5. Publique as alterações: `git push origin main`.

## Parte 3: Preparando o Ambiente MySQL

### 3.1 Usando Docker Compose para Subir o MySQL

Docker Compose é uma ferramenta para definir e executar aplicações Docker em múltiplos contêineres. É uma forma prática de gerenciar e executar serviços, como o MySQL, em contêineres.

#### 3.1.1 Criando o arquivo `docker-compose.yml`

Em seu diretório de projeto, crie um arquivo chamado `docker-compose.yml` com o seguinte conteúdo:

```yaml
version: '3.1'

services:
  mysql:
    image: mysql:latest
    container_name: mysql-container
    environment:
      MYSQL_ROOT_PASSWORD: sua_senha
      MYSQL_DATABASE: seu_banco
      MYSQL_USER: seu_usuario
      MYSQL_PASSWORD: sua_senha
    ports:
      - "3306:3306"
```

Aqui, você está definindo um serviço chamado "mysql" usando a última imagem do MySQL disponível. As variáveis de ambiente são usadas para definir a senha do root, o nome do banco de dados, o nome de usuário e a senha.

#### 3.1.2 Iniciando o Contêiner do MySQL

No terminal, navegue até o diretório onde o arquivo `docker-compose.yml` está localizado e execute o seguinte comando:

```bash
docker-compose up -d
```

Esse comando iniciará o contêiner do MySQL em segundo plano.

### 3.2 Conectando a um Cliente de Banco de Dados

Depois de ter o contêiner do MySQL em execução, você pode se conectar a ele usando qualquer cliente de banco de dados que suporte MySQL (como HeidiSql, MySQL Workbench, DBeaver, etc.).

As informações de conexão são as seguintes:

- **Host:** `localhost`
- **Porta:** `3306`
- **Usuário:** `seu_usuario`
- **Senha:** `sua_senha`
- **Banco de Dados:** `seu_banco`

Siga as instruções específicas do seu cliente para estabelecer a conexão.

## Conclusão:

O dia 0 é dedicado a configurar todos os recursos necessários para um aprendizado suave e eficaz. Ao seguir estas etapas, você estará pronto para mergulhar no mundo dos bancos de dados com o MySQL, além de colaborar e compartilhar seu trabalho através do GitHub.

O uso do Docker Compose simplifica a configuração e execução do MySQL, permitindo que você se concentre em aprender e explorar. A conexão com um cliente de banco de dados dá a você a interface necessária para trabalhar com suas tabelas, consultas e outras operações no MySQL. Você agora está pronto para começar o treinamento!