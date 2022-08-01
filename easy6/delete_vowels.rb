=begin
Input: An array
Output: An array

Rules:
- Return array of strings.
- Remove all the vowels.
- Both upper case and lower case vowels should be removed.

Algorithm:
- Setup a constant for vowels.
- Iterate through the words in array.
- Delete vowels.
- Return a new array.
=end

VOWELS = "AEIOUaeiou"

def remove_vowels(array)
  array.map do |words|
    words.delete(VOWELS)
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
