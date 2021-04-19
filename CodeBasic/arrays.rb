
bandas = ["AC/AC", "TC", "AA", "BB"]

# puts bandas[0]
# puts bandas[1]
# puts bandas[2]
# puts bandas[3]

bandas.push("Queen")
bandas.delete("AA")

pesquisar = bandas.find{|item| item.include?("Queen")}
puts pesquisar