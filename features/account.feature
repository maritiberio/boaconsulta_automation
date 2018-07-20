#language: pt

Funcionalidade: Cadastro de usuário
    Sendo um usuário
    Sendo realizar o cadastro no site do Doctor Engage
    Para eu ter controle dos meus pacientes

    Contexto:
        Dado que estou na tela de login
        E clico no botão para me cadastrar

    Cenário: Cadastro de usuário
        Quando informo meu nome, email e senha
        E clico no botão cadastrar
        Então eu devo ver a mensagem de sucesso "Conta criada com sucesso."

    Cenário: Senha menor que 6
        Quando informo meu nome, email e a senha "12345"
        E clico no botão cadastrar
        Então eu devo ver a mensagem "O campo senha deve conter no mínimo 6 caracteres."

    @cn
    Cenário: Usuário existente 
        Quando informo os seguintes dados:
        | nome  | Mariana                  |
        | email | marianatiberio@gmail.com |
        | senha | 123456                   |
        E clico no botão cadastrar
        Então eu devo ver a mensagem "O valor informado para o campo email já está em uso."

    Esquema do Cenário: Tentativa de cadastro 
        Quando informo os seguintes dados:
        |nome |<nome>|
        |email|<email>|
        |senha|<senha>|
        E clico no botão cadastrar
        Então eu devo permanecer na tela de cadastro "Cadastre-se gratuitamente."

        Exemplos:
        | nome    | email                    | senha  |
        | Mariana | marianatiberio@gmail.com |        |
        |         | marianatiberio@gmail.com | 123456 |
        | Mariana |                          | 123456 |



    