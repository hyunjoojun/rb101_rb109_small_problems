=begin
Input: A string
Output: A string

Rules:
- The every other letters should be upcased.
- Characters that are not letters stays the same, and not counted when
 switching between upper and lowercase.
- Start with the first letter capitalized.

Algorithm:
- Split the input string into characters.
- Create an index number starting 0.
- Iterate through the characters check if it's alpabetic.
- If the index is even and the chacter is alphabetic, upcase it.
- Increment the index if the character is alphabetic.
- If the index is odd and the character is alphabetic, downcase it.
- If the character is non-alphabetic do not increment the index.
- Return the new string.
=end

# def staggered_case(string)
#   idx = 0
#   new_chars = string.chars.map do |char|
#     if char =~ /[A-z]/
#       idx += 1
#       idx.odd? ? char.upcase : char.downcase
#     else
#       char
#     end
#   end
#   new_chars.join
# end

def staggered_case(string, ignore_non_letters = true)
  idx = 0
  if ignore_non_letters
    new_chars = string.chars.map do |char|
      if char =~ /[A-z]/
        idx += 1
        idx.odd? ? char.upcase : char.downcase
      else
        char
      end
    end
  else
    new_chars = string.chars.map.with_index do |char, idx|
      idx.even? ? char.upcase : char.downcase
    end
  end
  new_chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('ALL CAPS', false) == 'AlL CaPs'
p staggered_case('ALL CAPS', true) == 'AlL cApS'
