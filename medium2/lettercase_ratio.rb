=begin
Input: A string
Output: A hash

Rules:
- Return a hash that contains 3 keys: lowercase, uppercase, neither.
- The values of those keys will be the percentage of characters that matches the keys.
- The empty space counts as neither.
- The string will always contain at least one character.

Algorithm:
- Create a hash with all 3 keys.
- The values of the hash starts with 0.0.
- Split the string into characters.
- Count how many characters are in the string, this equals to denominator.
- number of lowercase / denominator = percentage
- Add the percentage to the values.
- Return the hash.
=end

def letter_percentages(string)
  percentage = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }

  string.chars do |char|
    if char =~ /[a-z]/
      percentage[:lowercase] += 1
    elsif char =~ /[A-Z]/
      percentage[:uppercase] += 1
    else
      percentage[:neither] += 1
    end
  end
  calculate(percentage)
end

def calculate(percentage)
  divisor = percentage.values.sum
  percentage.each do |key, value|
    percentage[key] = ((value / divisor) * 100).round(1)
  end
  percentage
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
