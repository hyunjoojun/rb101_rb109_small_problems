=begin
Input: A string
Output: A hash

Rules:
- Take a string and output a hash.
- The hash contains keys of lowercase, uppercase, and neither.
- The hash contains values of how many characters there are for all 3 keys.
- If the string is empty, return all keys with 0 values.

Algorithm:
- Set up a hash with all 3 keys and values of 0.
- Split the characters and iterate through them.
- Check if it's lowercase, uppercase, or neither.
- Increment the count accordingly.
- Return the hash.
=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars do |char|
    if LOWERCASE.include?(char)
      count_hash[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
