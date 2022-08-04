=begin
Input: A string
Output: A string

Rules:
- Return a new string with every character is doubled.

Algorithm:
- Set up an empty string.
- Split the string into characters.
- Iterate through each characters push the character twice.
- Return a new string.
=end

# def repeater(string)
#   new_string = ''
#   string.chars do |chr|
#     new_string << chr << chr
#   end
#   new_string
# end

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
