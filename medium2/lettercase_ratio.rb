=begin
Input: A string
Output: A hash

Rules:
- Return a hash that contains 3 keys: lowercase, uppercase, neither.
- The values of those keys will be the percentage of characters that matches the keys.
- The empty space counts as neither.
- The string will always contain at least one character.

Algorithm:
- Split the string into characters.
- Iterate through the array of characters and check if it's lowercase, uppercase,
  or neither.
- Set up a hash with appropriate keys and values set up to 0.
- Add one to the correct value as we iterate through the characters.
- Calculate the percentage.
- Return the hash.
=end

def letter_percentages(string)
  percentage = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  string.chars.each do |char|
    if char =~ /[a-z]/
      percentage[:lowercase] += 1
    elsif char =~ /[A-Z]/
      percentage[:uppercase] += 1
    else
      percentage[:neither] += 1
    end
  end
  convert_to_percentage(percentage)
end

def convert_to_percentage(hash)
  denomiator = hash.values.sum

  hash.each do |key, value|
    hash[key] = ((value * 100) / denomiator).round(1)
  end
  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
