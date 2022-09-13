=begin
Input: An integer
Output: Next featured number (integer)

Rules:
- Featured number:
  - An odd number
  - Multiple of 7
  - Digits occur only once
- Return next featured number that is greater than the argument.
- Return an error message if there is no next featured number.

Algorithm:
- Increment the number.
- Break if num % 7 == 0 && num.odd? && if the integers are unique.
- Return the number.
- Return the error message if number is greater than 9_999_999_999.
=end

def featured(num)
  return "There is no possible number." if num >= 9_999_999_999

  loop do
    num += 1
    break if num % 7 == 0 && num.odd? && num.digits.uniq == num.digits
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# def featured(num)
#   featured_num = 0
#   (num + 1..).each do |number|
#     if number.odd? && number % 7 == 0 && number.digits == number.digits.uniq
#       featured_num += number
#       return featured_num if featured_num != 0
#     elsif number >= 9_999_999_999
#       puts "There is no possible number."
#       break
#     end
#   end
# end
