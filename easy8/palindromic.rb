=begin
input: string
output: array of substrings that are palindromic

rules:
- Palindromic means same sequence of characters forwards and backwords.
- The output should be arranged in the same sequence as input string.
- Duplicates must be included.
- Use substrings method in the previous exercise.
- Palindromes are case sensitive.

Algorithm:
- Write a method that checks if the string is palindrome.
- Use substrings method to get all substrings.
- Iterate through each substring.
- Select all substrings that are palindrome and has more than one characters.
=end

def palindromes(string)
  substrings = substrings(string)
  substrings.select do |substring|
    palindromic?(substring)
  end
end

def palindromic?(word)
  word == word.reverse && word.length > 1
end

def substrings(string)
  substrings = []
  (0...string.length).each do |index|
    this_substring = string[index..-1]
    substrings << leading_substrings(this_substring)
  end
  substrings.flatten
end

def leading_substrings(string)
  substrings = []
  string.chars.each_index do |index|
    substrings << string[0..index].downcase.delete('^0-9a-z')
  end
  substrings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
