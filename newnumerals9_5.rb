=begin

in the new system I placed before V or X indicates one less, so four is IV (one less than five) and nine is IX (one less than ten)
X placed before L or C indicates ten less, so forty is XL (ten less than fifty) and ninety is XC (ten less than a hundred)
C placed before D or M indicates a hundred less, so four hundred is CD (a hundred less than five hundred) and nine hundred is CM (a hundred less than a thousand)
=end

def new_numerals(num)
    thousands = num/1000
    hundreds = (num%1000)/100
    tens = (num%100)/10
    ones = (num%10)/1
    
    romans = "M"*thousands
    
    #for hundreds need to accommodate option for D=500 C=100, and also
    #if hundreds = 500 - use D
    #if hundreds = 900 - use CM
    #if hundreds = 400 - use CD
    
    if hundreds == 9
        romans = romans + "CM"
    elsif hundreds == 4
        romans = romans + "CD"
    else
        romans = romans + "D"*(num%1000 /500)
        romans = romans + "C"*(num%500 / 100)
    end
    
    #for tens need options for
    #L=50, X=10, XL = 40, XC = 90
    
    if tens ==4
        romans = romans + "XL"
    elsif tens == 9
        romans = romans + "XC"
    else
        romans = romans + "L"*(num%100 / 50)
        romans = romans + "X"*(num%50 / 10)
    end
    
    #for ones need options for:
    # V=5, I=1, IV=4, IX = 9
    
    if ones == 4
        romans = romans + "IV"
    elsif ones == 9
        romans = romans + "IX"
    else
        romans = romans + "V"*(num%10 /5)
        romans = romans + "I"*(num%5 /1)
    end
    
    romans

end

puts new_numerals(9)
