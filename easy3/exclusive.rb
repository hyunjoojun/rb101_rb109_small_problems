=begin
method named xor? (two arguments)
return true if one argument is true
return false otherwise

input = two arguments
output = true if one of them is true
         false if both are true
               if both are false
=end

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
