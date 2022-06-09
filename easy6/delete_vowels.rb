=begin
input: array of strings
output: array of same string values except vowels (a, e, i, o, u)

rules:
- Return array of strings.
- Remove all the vowels.
- Both upper case and lower case vowels should be removed.

Algorithm:
- Set an array for vowels.
- Iterate through letters and delete vowels.
- Return new array.
=end

VOWELS = "AEIOUaeiou"

def remove_vowels(array)
  array.map do |letters|
    letters.delete(VOWELS)
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']