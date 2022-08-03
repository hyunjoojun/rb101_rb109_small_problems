=begin
Input: A string
Output: A string

Rules:
- Every uppercase letter is replaced by its lowercase version.
- Every lowercase letter is replaced by its uppercase version.
- All others remain the same.
- Do not use swapcase method.

Algorithm:
- Split into characters.
- Iterate through all characters and check if it's lowercase, uppercase, or neither.
- If it's lowercase switch it to uppercase.
- If it's uppercase, switch it to lowercase.
- If it's neither, return the same character.
- Return new string.
=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  new_string = ''
  string.chars do |char|
    if UPPERCASE.include?(char)
      new_string << char.downcase
    elsif LOWERCASE.include?(char)
      new_string << char.upcase
    else
      new_string << char
    end
  end
  new_string
end

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
