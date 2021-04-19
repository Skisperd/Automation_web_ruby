#Operadores matemáticos

def soma(n1, n2)
    puts n1 + n2
end

def subtrai(n1, n2)
    puts n1 - n2
end

def multiplica(n1, n2)
    puts n1 * n2
end

def dividi(n1, n2)
    result = (n1.to_f / n2.to_f).round(2)
    puts result
    puts result.class
end

dividi(10,3)