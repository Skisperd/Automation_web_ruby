#language:pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "tf.dias.networks@gmail.com" e "Sidia2021"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
        | email_input                   | senha_input | mensagem_output                  |
        | tiago.dias.oliveira@gmail.com | Sidia       | Usuário e/ou senha inválidos.    |
        | tiago.dias.oliveira@404.com   | Sidia2021   | Usuário e/ou senha inválidos.    |
        | tiago.dias.oliveira$gmail.com | Sidia       | Oops. Informe um email válido!   |
        | tiago.dias.oliveira@gmail.com |             | Oops. Informe sua senha secreta! |