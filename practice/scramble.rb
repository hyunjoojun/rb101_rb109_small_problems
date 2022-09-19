=begin
Write a function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise return false.

For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true.
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.

Input: Two strings
Output: true or false

Rules:
- There are two strings.
- Return true if the second string can be made with the first string letters.
- The order of letters does not matter.
- Only lower case letters are used.
- The number of letters should match or the first string must have more.

Algorithm:
- Split the second string into characters.
- Iterate through each charcters and substitute with blank space.
- If there is no character that we need, it will have nil elements in the new array.
- If the new array includes nil, return false, otherwise true.
=end

def scramble(str1, str2)
  transformed = str2.chars.map do |char|
    str1.sub!(char, ' ')
  end

  !transformed.include?(nil)
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqty', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
