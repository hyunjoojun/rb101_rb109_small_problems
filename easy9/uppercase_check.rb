=begin
Input: string
Output: boolean

Rules:
- Input string can be empty.
- Input string may contain any letters and non alphabetics.
- The method should return true if all letters are uppercase.
- The method should return false if any letter is lowercase.
- The characters that are not letters should be ignored.

Algorithm:
- Check if input string is equal to upcased string.
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')