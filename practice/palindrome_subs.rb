=begin
Input: A string
Output: Array of substrings that are palindrome

Rules:
- Return substrings that are palindromes.
- Palindromes are words that's equal when it's reversed.
- Palindromes are case sensitive, meaning 'Mom' is not palindrome.

Algorithm:
- Need all the substrings that are at least 2 characters long.
- When we get all substrings, iterate through the array and check if it's palindrome.
- If it's palindrome, push into a result array.
- Return the result array.
=end

def substrings(string)
  subs = []
  length = string.length - 1

  1.upto(length) do |start|
    1.upto(length) do |idx|
      subs << string[start..idx] if string[start..idx].length >= 2
    end
  end
  subs
end

def palindrome_substrings(string)
  substrings = substrings(string)

  substrings.select do |sub|
    sub.reverse == sub
  end
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []
p palindrome_substrings("Dad") == []
