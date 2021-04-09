puts "Qual o seu nome?"
nome = gets.chomp
puts "Qual a sua idade"
idade = gets.chomp.to_i


if (idade >= 18)
    puts nome + " Voce pode tirar a carteira"
elsif (idade >= 7)
    puts nome + " Voce nao pode tirar a carteira"
else 
    puts nome + " Voce é jovem meu jovem"
end
