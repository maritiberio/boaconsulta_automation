#language: pt

Funcionalidade: Login
    Sendo um usuário já cadastrado
    Sendo realizar login no site do Doctor Engage
    Para eu ter acesso a minha área de trabalho

    Contexto:
        Dado que estou na tela de login

    Cenário: Login positivo
        Quando eu informo o email "marianatiberio@gmail.com" 
        E informo a senha "123456"
        E clico no botão entrar
        Então eu devo ver "Clínica Dr. Mariana Marques Tibério"

    Cenário: Email incorreto
        Quando eu informo o email "marianatiberio@gmail.commm" 
        E informo a senha "123456"
        E clico no botão entrar
        Então eu devo ver a mensagem "E-mail ou senha incorreto."

    Cenário: Senha incorreta
        Quando eu informo o email "marianatiberio@gmail.com" 
        E informo a senha "1234567"
        E clico no botão entrar
        Então eu devo ver a mensagem "E-mail ou senha incorreto."

    Cenário: Esqueci minha senha
        E clico no botão esqueci minha senha
        Quando eu informo o email "marianatiberio@gmail.com"
        E toco no botão recuperar senha
        Então eu devo ver a mensagem "Enviamos um link para redefinir a sua senha por e-mail."

    Cenário: Esqueci minha senha usuário não cadastrado
        E clico no botão esqueci minha senha
        Quando eu informo o email "mariana1234@gmail.com"
        E toco no botão recuperar senha
        Então eu devo ver a mensagem "Não conseguimos encontrar nenhum usuário com o endereço de e-mail informado."


        

        
