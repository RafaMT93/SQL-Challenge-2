Instruções do Desafio

***********************************Primeira Etapa*************************************************************

Em todas as etapas, o cenário de trabalho seguirá uma mesma estrutura. Dito isso, baixe o script “Base_projeto.sql” disponível no final dessa página e em seguida execute em seu banco de dados ORACLE. Esse script contém as instruções de criação de tabelas e inserção de dados. Abaixo temos o modelo conceitual de nossa estrutura.

Como podemos observar, temos quatro (4) entidades que se relacionam. Para a nossa primeira atividade, você deverá desenvolver em SQL no banco de dados ORACLE, quatros (4) scripts de seleção de dados, ou “selects”.

Desenvolva os selects de acordo com o que se pede:
1) Crie um select que exibe o valor gasto por todos os CLIENTES cadastrados. Essa seleção deve exibir além do total gasto (por cliente), o nome e cpf do cliente.
2) Crie um select que exibe quais são os dois CLIENTES que mais gastaram. Essa seleção deve exibir o total gasto (por cliente), o nome e o cpf do cliente.
3) Crie um select que exibe quais são os três PRODUTOS com a maior quantidade de PEDIDOS. Exiba o nome e o código do produto. Considere a possibilidade de que entre os 3, existam PRODUTOS com a mesma quantidade de PEDIDOS, e neste caso, exiba todos.
4) Crie um select que exibe o nome do cliente que comprou a maior quantidade de ITENS DE PEDIDO.  Crie um select que exibe o nome do cliente que comprou o ITEM de PEDIDO que tenha a maior quantidade.

***********************************Segunda Etapa*************************************************************

Desenvolva as Stored procedures de acordo com o que se pede:

1) Crie uma Stored procedure que recebe como parâmetro os dados de um produto e insira na tabela PRODUTO.
2) Crie uma Stored procedure que recebe como parâmetro os dados de um cliente e insira na tabela CLIENTE.

***********************************Terceira Etapa*************************************************************

Desenvolva as Triggers de acordo com o que se pede:

1) Crie uma Trigger que efetua a baixa no estoque de um Produto toda vez que ocorrer uma venda desse produto;
2) Crie uma Trigger que efetua a criação de um registro de log toda vez que um produto for alterado.
