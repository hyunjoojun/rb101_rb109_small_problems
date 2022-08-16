# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

# The chars method creates an array of all the characters in the string. the c in line 2
# represents each characters in the array. These are new string objects which gets
# mutated. But the name itself does not change.

def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

p shout_out_to('you') # expected: 'HEY YOU'
