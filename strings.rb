puts "Qual o seu nome?"
nome = gets.chomp
puts "Qual a sua idade"
idade = gets.chomp.to_i

#Concatenação
# if (idade >= 18)
#     puts nome + " Voce tem " + idade.to_s + " anos e pode tirar a carteira."
# elsif (idade >= 7)
#     puts nome + " Voce tem " + idade.to_s + " anos e continuar de bike."
# else 
#     puts nome + " Voce tem " + idade.to_s + " anos voce é um bb."
# end

#interporlação
if (idade >= 18)
    puts "#{nome}, voce tem #{idade} anos e pode tirar a carteira."
elsif (idade >= 7)
    puts "#{nome}, voce tem #{idade} anos e é melhor continuar de bike."
else 
    puts "#{nome}, voce tem #{idade} anos e pode tirar a carteira."
end