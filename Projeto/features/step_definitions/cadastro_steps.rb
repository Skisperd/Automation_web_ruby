
Dado('que acesso a página de cadastro') do
    @signup_page.open
end

Quando('submeto o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes.first   

    MongoDB.new.remove_user(user[:email])
<<<<<<< HEAD
    
    @signup_page.create(user)
end
=======

    find("#fullName").set user[:nome]
    find("#email").set user[:email]
    find("#password").set user[:senha]
>>>>>>> origin/main

Quando('submeto as seguintes informações de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes.first   
    
    @signup_page.create(user)
end