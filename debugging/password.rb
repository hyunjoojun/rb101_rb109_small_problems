password = ''

def set_password(password)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password << new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if password.empty?
  set_password(password)
end

verify_password(password)
