# Given a string s consisting of only the characters 'a' and 'b', return true if every 'a'
# appears before every 'b' in the string. Otherwise, return false.

# Input: String
# Output: true or false

# 'a' has to appear before 'b'.
# 'a' cannot be after 'b'.
# If there is 'b' before 'a' return false
# If there is no 'a' return false
# If there is only 'a' return true
# If there is 'b' in the string, the string has to end with 'a', false

def check_string(string)
  return false unless string.include?('a')

  string.chars == string.chars.sort
end

p check_string("aba") == false
p check_string("aaa") == true
p check_string("aabb") == true
p check_string("abab") == false
p check_string("aaabbb") == true
p check_string("bbb") == false
