=begin
Input: A string
Output: An array of substrings that are palindromic

Rules:
- Return an array with substrings that are palindromic.
- Substrings reads the same forwards and backwards.
- Arrange the return value as the substrings appear in the string.
- Duplicates should be included.
- Use the substrings method from previous exercise.
- Palindromics should be case sensitive.

Algorithm:
- Take the all sustrings from the substrings method.
- Check if they have same characters even it's reversed.
- If it is, include in the array.
- Return the array.
=end

def palindromes(string)
  substrings = substrings(string)
  clean_substrings = substrings.map { |word| word.delete('^a-zA-Z') }
  clean_substrings.select do |sub|
    sub == sub.reverse && sub.length > 1
  end
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def leading_substrings(string)
  string.length.times.map do |idx|
    string[0..idx]
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
