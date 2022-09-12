=begin
Input: A string
Output: true or false

Rules:
- Return true if all parentheses match.
- Return false otherwise.
- All parentheses must start with '('
- When we open parentheses, must be closed.

Algorithm:
- Split all the characters in the string.
- Setup a variable value = 0
- If a character is equal to the starting parentheses, add 1 to the value.
- If a character is equal to the closing parentheses, subtract 1 to the value.
- If closing parentheses come first which will make negative value, return false.
- After the iteration, if value = 0, return true else false.
=end

PAIRS = {
  '(' => ')',
  '[' => ']',
  '{' => '}'
}

def balanced?(string)
  value = 0

  string.chars do |char|
    value += 1 if PAIRS.keys.include?(char)
    value -= 1 if PAIRS.values.include?(char)
    break if value < 0
  end

  value.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

p balanced?('()') == true
p balanced?('()))') == false
p balanced?('(())') == true
p balanced?(')(') == false
p balanced?('{}()') == true
p balanced?('{}()[]') == true
p balanced?('{{}()[]}') == true
p balanced?(']{{}()[]}') == false
