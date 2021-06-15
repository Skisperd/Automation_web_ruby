#language: pt

Funcionalidade: Cadastro de Anuncios
Sendo usuario cadastro no RockLov que possui equipamentos musicais no
Quero cadastrar meus equipamentos
Para que eu possa dispolinibilizados para locação

Cenario: Novo Equipo

Dado que estou logado como "tf.dias.networks@gmail.com" e "Sidia2021"
E que acesso o formulario de cadastro de anuncios
E que eu tenho o seguinte equipamento:
| thumb     | fender-sb.jb  |
| nome      | Fender Strato |
| Categoria | Cordas        |
| Preco     | 200           |
Quando submeto o cadastro desse item
Entao devo ver esse item no meu Dashboard
