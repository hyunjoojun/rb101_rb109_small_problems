=begin
Input = Any two arguments
Output = Boolean

Rules:
- If one of the two arguments is truthy, returns true.
- If two arguments are truthy, returns false.
- If two arguments are falsey, returns false.
- Must return boolean value not truthy or falsey values.

Algorithm:
- Check if two arguments are truthy.
- If one of them is truthy, return true else, false.
=end

# def xor?(op1, op2)
#   if op1 && op2
#     false
#   elsif op1 || op2
#     true
#   else
#     false
#   end
# end

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?(true, false) == true
p xor?(false, false) == false
p xor?(true, true) == false
p xor?(false, true) == true
