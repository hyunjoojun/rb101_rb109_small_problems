=begin
input: string
output: new string with every other characters caplitalized

rules:
- Every other character is capitalized.
- Remaining characters are lowercase.
- Characters that are not letters stays the same.
- Count all characters even they are switched.

Algorithm:
- Split the string into characters.
- If character's index is odd, upcase it.
- If character's index is even, downcase it.
- Return new string.
=end

def staggered_case(words)
  idx = 0
  new_chars = words.chars.map do |char|
    idx += 1
    idx.odd? ? char.upcase : char.downcase
  end
  new_chars.join
end

def staggered_case(words)
  idx = 0
  new_chars = words.chars.map do |char|
    idx += 1
    idx.even? ? char.upcase : char.downcase
  end
  new_chars.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')