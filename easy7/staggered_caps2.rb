=begin
input: string
output: new string with every other characters caplitalized

rules:
- Every other character is capitalized.
- Remaining characters are lowercase.
- Characters that are not letters stays the same.
- Count only if they are switched.

Algorithm:
- Set index equal to 0.
- Split the string into characters.
- If character is letters increment index.
  - If index is odd upcase it.
  - If index is even downcase it.
- If character is not letters, do not increment index.
- Return the new string.
=end

def staggered_case(words)
  idx = 0
  new_chars = words.chars.map do |char|
    if char =~ /[a-z]/i
      idx += 1
      idx.odd? ? char.upcase : char.downcase
    else
      char
    end
  end
  new_chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'