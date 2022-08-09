=begin
Input: An array
Output: A transformed array

Rules:
- The input array contains strings.
- Return an array of same string values but remove vowels.

Algorithm:
- Iterate through the array of words and delete the vowels.
- Use map method to transform the array.
- Return the new array.
=end

def remove_vowels(array)
  array.map { |word| word.delete('AEIOUaeiou') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
