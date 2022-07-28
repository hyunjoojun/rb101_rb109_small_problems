=begin
Input = String
Output = Boolean

Rules:
- Return true if the input string is palindrome.
- Return false if the input string is not palindrome.
- Palindrome reads the same forward and backward.
- Case-insensitive and ignore all non-alphanumeric characters.

Algorithm:
- Delete all non-alphanumeric characters in the string.
- Switch to all alphabets into lower case letters.
- Then compare all characters to check if it's palindrome.
=end

def palindrome?(words)
  words == words.reverse
end

def real_palindrome?(obj)
  clean_obj = obj.downcase.delete('^a-z0-9')
  palindrome?(clean_obj)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
