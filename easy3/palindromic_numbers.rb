=begin
Input = Integer
Output = Boolean

Rules:
- Return true if the input number is palindrome.
- Return false if the input number is not palindrome.
- Palindrome reads the same forward and backward.

Algorithm:
- We can use .reverse method if we break the number down into digits.
- Then compare digits to reversed digits.
- If they are equal, return true otherwise false.
=end

def palindromic_number?(number)
  number.digits == number.digits.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
