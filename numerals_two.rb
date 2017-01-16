def roman_to_integer(roman)

#gives each numeral an integer value, stores in a hash
digit_vals = {"i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "d" => 500,
    "m" => 1000}

#need to count what position in the string is being assessed, and what the preceding numeral evaluated was
total = 0
prev = 0
#needs to be set at .length -1 since position of character is one less than the actual length of string
index = roman.length - 1

#set a loop so stops when it assesses the final numeral
while index >=0
    #convert to downcase as the string could be upper or lowercase
    c = roman[index].downcase
    #need to deduct one from the index, so that we're working backwards to the next numeral
    index = index -1
    #access the hash to get the numeric value, assign to val
    val = digit_vals[c]
    #error message incase other input is provided
    if !val
        puts "This is not a valid roman numeral"
        return
    end
    #if the numeric value of the numeral is lower than the one previously assesed it means it is deducted from the previous value (e.g. IV).
    if val < prev
        val = val * -1
        #otherwise, we need to remember what the value was in case the next one deducts from this one
    else
        prev = val
    end
    #then we need to increase the running total with the value 
    
    total = total + val
    
end

total

end

puts roman_to_integer("mcmxcix")
puts roman_to_integer("CCCLXV")
