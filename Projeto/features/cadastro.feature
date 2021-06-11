#language:pt

Funcionalidade: Cadastro
Sendo um músico que possui equipamentos musicais
Quero fazer o meu cadastro no RockLov
Para que eu possa disponibilizá-los para locação

Cenario: Fazer cadastro

Dado que acesso a página de cadastro
Quando submeto o seguinte formulario de cadastro:
| nome       | email                      | senha     |
| Tiago Dias | tf.dias.networks@gmail.com | Sidia2021 |
Então sou redirecionado para o Dashboard

Esquema do Cenario: Tentativa de Cadastro

Dado que acesso a página de cadastro
Quando submeto o seguinte formulario de cadastro:
| nome         | email         | senha         |
| <nome_input> | <email_input> | <senha_input> |
Então vejo a mensagem de alerta: "<mensagem_output>"

Exemplos:
| nome_input | email_input                | senha_input | mensagem_output                  |
|            | tf.dias.oliveira@gmail.com | Sidia2021   | Oops. Informe seu nome completo! |
| Tiago Dias |                            | Sidia2021   | Oops. Informe um email válido!   |
| Tiago Dias | tf.dias.oliveira$gmail.com | Sidia2021   | Oops. Informe um email válido!   |
| Tiago Dias | tf.dias.oliveira%gmail.com | Sidia2021   | Oops. Informe um email válido!   |
| Tiago Dias | tf.dias.oliveira@gmail.com |             | Oops. Informe sua senha secreta! |