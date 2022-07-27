name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# The upcase! method is a destructive method, so the local variable name gets mutated.
# Since the local variable name and save_name are referring to the same string
# object 'Bob', both variables got mutated which results in 'BOB' for both variables.
