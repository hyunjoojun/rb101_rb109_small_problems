=begin
input: string
output: hash

rules:
- Count lowercase letters.
- Count uppercase letters.
- Count characters that's neither lowercase or uppercase letters.
- Return them into a hash.
- Keys : lowercase, uppercase, neither
- Values : number of lowercase, number of uppercase, number of characters that are neither.

Algorithm:
- Set an empty hash.
- Set a constant of lowercase letters as an array.
- Set a constant of uppercase letters as an array.
- Split all characters in the string.
- Iterate through all characters to check which category they fit in.
- Add one to appropriate category after iteration.
- Return hash.
=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string)
  counter = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if LOWERCASE.include?(char)
      counter[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      counter[:uppercase] += 1
    else
      counter[:neither] += 1
    end
  end

  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }