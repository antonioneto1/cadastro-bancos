# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
INSTRUÇÕES
O objetivo do teste é criar alguns cadastros para avaliarmos seus conhecimentos com linguagem e o framework.

1- O sistema deve conter os seguintes cadastros;

Agências Bancárias (Número da Agência(string), Endereço(text))

Contas Bancárias (Agência Bancária(belongs_to), Número da Conta(string), Limite(decimal))

obs.: todos os campos são obrigatórios e devem ter telas para possibilitar o cadastro a edição e a exclusão.

2- Não é permitido cadastrar Agências com o mesmo número, o sistema deve validar isso.

3- Não deve ser possível excluir uma Agência caso a mesma já possua Contas Bancárias relacionadas;

4- Enviar o projeto zipado por email ou se preferir o link do repositório(github ou bitbucket) do mesmo.

Itens não obrigatórios mas que contarão como diferenciais:

Usar Bootstrap ou Material Design nas views;

Usar frameworks javascript para melhorar a interação do usuário com os cadastros que deve realizar;

Utilizar testes, Rspec preferencialmente ou outro;

Publicar no Heroku.
