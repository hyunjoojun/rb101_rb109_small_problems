def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(object)
  object = object.downcase.delete('^a-z0-9')
  palindrome?(object)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')
