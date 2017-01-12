
def old_numerals(num)
numerals = []
numerals << "M"*(num/1000)
numerals << "D"*(num%1000 /500)
numerals << "C"*(num%500 / 100)
numerals << "L"*(num%100 /50)
numerals << "X"*(num%50 /10)
numerals << "V"*(num%10 /5)
numerals << "I"*(num%5)
end

print old_numerals(2315)
