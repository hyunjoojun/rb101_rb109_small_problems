=begin
Input: A string
Output: true or false

Rules:
- If all parentheses are matching in pairs, return true.
- Return false otherwise.
- If the parentheses starts with ')' return false.

Algorithm:
- Create an empty array.
- Split the string into characters.
- If the charcter is equal to '(' or ')' push them into the array.
- If the array starts with ')' then return false.
- Count how many of '(' and ')' in the array.
- If the count does not match return false, otherwise return true.
=end

STARTING = [ '(', '[', '{' ]
ENDING = [ ')', ']', '}' ]

def balanced?(string)
  parentheses = []

  string.chars do |char|
    if STARTING.include?(char) || ENDING.include?(char)
      parentheses << char
    end
  end
  return false if ENDING.include?(parentheses[0]) || STARTING.include?(parentheses[-1])
  parentheses.length.even?
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
p balanced?('()()') == true
p balanced?('(())') == true
p balanced?(')(') == false
p balanced?('{}()') == true
p balanced?('{}()[]') == true
p balanced?('{{}()[]}') == true
p balanced?(']{{}()[]}') == false
