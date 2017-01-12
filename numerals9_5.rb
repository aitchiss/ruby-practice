#Acquire input integer from user
puts "Please enter the number to be converted to numberals (between 1 and 3000)"
n = gets.chomp
i = n.to_i
#Determine number of M numerals
m_numeral = i/1000
m_numeral = m_numeral.floor
i = i - (m_numeral*1000)
#Determine number of D numerals
d_numeral = i/500
d_numeral = d_numeral.floor
i = i - (d_numeral*500)
#Determine number of C numerals
c_numeral = i/100
c_numeral = c_numeral.floor
i = i - (c_numeral*100)
#Determine number of L numerals
l_numeral = i/50
l_numeral = l_numeral.floor
i = i - (l_numeral*50)
#Determine number of X numerals
x_numeral = i/10
x_numeral = x_numeral.floor
i = i - (x_numeral*10)
#Determine number of V numerals
v_numeral = i/5
v_numeral = v_numeral.floor
i = i - (v_numeral*5)
#Output
puts "The old style Roman numerals for the number #{n} are:"
m_numeral.times {print "M"}
d_numeral.times {print "D"}
c_numeral.times {print "C"}
l_numeral.times {print "L"}
x_numeral.times {print "X"}
v_numeral.times {print "V"}
i.times {print "I"}
