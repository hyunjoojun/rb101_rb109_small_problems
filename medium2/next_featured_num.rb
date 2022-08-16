=begin
Input: An integer
Output: Next featured number (integer)

Rules:
- A featured number is..
  - Odd number
  - Multiple of 7
  - Unique digits(one each) : 133 is not a featured number because 3 appears twice.
- Return next featured number that is greater than input number.
- Return an error message if there is no next featured number.

Algorithm:
- Set a number = 0
- starting from the input number, find a featured number.
- The number has to be odd, number % 7 must be == 0, and digits have to be unique.
- Once we find the number, return the number.
- Else, return an error message.
=end

def featured(num)
  featured_num = 0
  (num + 1..).each do |number|
    if number.odd? && number % 7 == 0 && number.digits == number.digits.uniq
      featured_num += number
      return featured_num if featured_num != 0
    elsif number >= 9_999_999_999
      puts "There is no possible number."
      break
    end
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
