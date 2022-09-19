=begin
Find length of the longest substring in the given string that is the same in reverse.
As an example, if the input was "I like racecars that go fast", the substring
('racecar') length would be 7.
If the length of the input string is 0, return value must be 0.

Input: A string
Output: The length of the substring that's palindrome.

Rules:
- The input string will have letters.
- If the string is empty, return 0.
- Return the length of substring that's palindrome.
- Palindrome is letters that is the same in reverse.

Algorithm:
- Get all the substrings.
- Among those substrings, find the palindrome including one letter.
- Once I get all the palindromes, find the longest in length.
- Return the length.
=end

def substrings(string)
  substrings = []

  (0...string.length).each do |idx1|
    (0...string.length).each do |idx2|
      substrings << string[idx1..idx2]
    end
  end
  substrings
end

def longest_palindrome(string)
  return 0 if string.empty?

  substrings = substrings(string)
  palindromes = substrings.select do |substring|
    substring.reverse == substring
  end

  palindromes.max_by { |sub| sub.length }.length
end

p longest_palindrome('') == 0
p longest_palindrome('I like racecar') == 7
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
