# Dia 2: Construindo um Diagrama de Banco de Dados

## Parte 1: O que é um Diagrama de Banco de Dados?

Um Diagrama de Banco de Dados é uma representação visual das estruturas de um banco de dados. Ele descreve como as entidades do banco de dados estão relacionadas e quais dados estão armazenados. O diagrama facilita a visualização das estruturas do banco de dados, tornando mais fácil o processo de design e validação.

## Parte 2: Elementos de um Diagrama de Banco de Dados

Um Diagrama de Banco de Dados contém várias partes essenciais:

- **Entidades**: Estas são as tabelas do banco de dados. No exemplo do pet shop, as entidades seriam o `Cliente`, `Pet` e `Produto`.
- **Atributos**: Estes são os campos dentro das tabelas. No exemplo do pet shop, os atributos seriam `idCliente`, `nomeCliente`, `telefone`, etc.
- **Relacionamentos**: Estes são os vínculos entre as entidades. No exemplo do pet shop, um relacionamento poderia ser "Um Cliente pode possuir vários Pets".

## Parte 3: Ferramentas para Criar um Diagrama de Banco de Dados

Existem várias ferramentas disponíveis para criar Diagramas de Banco de Dados. Algumas são online e gratuitas, outras são softwares pagos. Neste curso, vamos usar a ferramenta online gratuita chamada Draw.io.

## Parte 4: Prática de Criação de um Diagrama de Banco de Dados

Agora que conhecemos os elementos de um Diagrama de Banco de Dados, vamos criar um usando o exemplo do pet shop.

1. Inicie abrindo a ferramenta Draw.io.
2. Crie uma nova tabela para a entidade `Cliente`. Adicione os atributos `idCliente`, `nomeCliente` e `telefone`.
3. Faça o mesmo para as entidades `Pet` e `Produto`.
4. Crie um relacionamento entre `Cliente` e `Pet`. Isto representa que um Cliente pode ter vários Pets.
5. Crie um relacionamento entre `Pet` e `Produto`. Isto pode representar que um Pet pode usar vários Produtos.

## Atividades

1. Crie um diagrama de banco de dados para um restaurante. As entidades podem ser `Cliente`, `Pedido`, `Item do Menu`, `Mesa`, etc. Lembre-se de adicionar os atributos para cada entidade e os relacionamentos entre elas.
2. Crie um diagrama de banco de dados para uma loja online. As entidades podem ser `Cliente`, `Produto`, `Pedido`, `Carrinho`, etc. Novamente, lembre-se de adicionar os atributos para cada entidade e os relacionamentos entre elas.