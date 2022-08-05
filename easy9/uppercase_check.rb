=begin
Input: A string
Output: Boolean

Rules:
- Return true if all alphabetic characters are uppercase.
- Return false otherwise.
- Characters that are not alphabetic should be ignored.

Algorithm:
- Check if string is equal to string.upcase.
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
