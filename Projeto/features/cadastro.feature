#language:pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @smoke1
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome           |email                          |senha|
            |Tiago Dias     | tf.dias.oliveira@gmail.com    |Sidia2021|
        Então sou redirecionado para o Dashboard

    @smoke
    Cenario: Submeter cadastro sem o nome

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome       |email                       |senha|
            |           | tf.dias.oliveira@gmail.com |Sidia2021|
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"
    
    @smoke
    Cenario: Submeter cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome       |email                      |senha|
            |Tiago Dias |                           |Sidia2021|
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @smoke
    Cenario: Submeter cadastro com email incorreto

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome       |email                       |senha|
            |Tiago Dias | tf.dias.oliveira*gmail.com |Sidia2021|
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @smoke
    Cenario: Submeter cadastro sem a senha

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome       |email                       |senha|
            |Tiago Dias | tf.dias.oliveira@gmail.com ||
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"
