=begin
Input: A string
Output: A string

Rules:
- The every other letters should be upcased.
- Characters that are not letters stays the same, but counted as characters.
 when switching between upper and lowercase.
- Start with the first letter capitalized.

Algorithm:
- Split the string into characters.
- The characters with even index gets upcased.
- The characters with odd index gets downcased.
- If the character is not a letter, remains the same.
- Return the new string.
=end

def staggered_case(string)
  new_chars = string.chars.map.with_index do |char, idx|
    if idx.even?
      char.upcase
    else
      char.downcase
    end
  end
  new_chars.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')
