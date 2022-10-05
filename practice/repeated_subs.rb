=begin
Given non empty string check if it can be constructed by taking a substring
of it an appending multiple copies of substring together.
Assume given string consists of lowercase English letters only.

Example 1:
Input: 'abab'
Output: true
Explanation: It's the substring 'ab' twice.
Example 2:
Input: 'aba'
Output: false
Explanation: String cannot be constructed from repeating substring.

Input: A string
Output: true or false

Rules:
- The input string is non empty string.
- The input string consist of substring that occurs multiple times.
- It only has lowercase letters only.
- Is 'aaa' true?
- Is 'abcdabcdabcdabcd' true?

Algorithm:
- Get all the substring upto the half of the length of input string.
- When we get all substrings, iterate through each substring and multiply by
  string size / substring size.
- If the multiplied string is equal to the input string, return true.
- Otherwise, return false.
=end

def substrings(string)
  substrings = []

  1.upto(string.size / 2) do |sub_length|
    substrings << string[0, sub_length] if string.size % sub_length == 0
  end
  substrings
end

def repeated_substring_patten(string)
  substrings = substrings(string)

  substrings.any? do |sub|
    multiplier = string.length / sub.length
    sub * multiplier == string
  end
end

p repeated_substring_patten('abab') == true
p repeated_substring_patten('aba') == false
p repeated_substring_patten('aabaaba') == false
p repeated_substring_patten('abaababaab') == true
p repeated_substring_patten('abcabcabcabc') == true
