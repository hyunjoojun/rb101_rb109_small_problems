=begin
Given 2 strings, find out if there is a substring that appears in both strings.
Return true if you find a substring that appears in both strings, or false if not.
Only consider substrings that are longer than one letter long.

Input: Two strings
Output: true or false

Rules:
- If a substring appears in both strings, return true, otherwise return false.
- If both strings or any one of the string is empty, return false.
- Is it case sentivie?

Algorithm:
- Get all the substrings that are longer than or equal to two letters.
- But for only one string, shorter word.
- Once we have the substrings, we can iterate through the substrings and
check with another word, longer or equal in length.
- Return true if the substring matches letters inside other string.
=end

def substrings(string)
  substrings = []

  (0...string.length).each do |idx1|
    (1...string.length).each do |idx2|
      substrings << string[idx1..idx2] if string[idx1..idx2].length >= 2
    end
  end
  substrings
end

def substr_test(str1, str2)
  substrings = substrings(str1)

  substrings.any? do |substring|
    str2.include?(substring)
  end
end

p substr_test('Something', 'Fun') == false
p substr_test('Something', 'Home') == true
p substr_test('Something', '') == false
p substr_test('', 'Something') == false
p substr_test('Banana', 'banana') == true
p substr_test('test', 'lllt') == false
p substr_test('', '') == false
p substr_test('1234567', '541256') == true
p substr_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
