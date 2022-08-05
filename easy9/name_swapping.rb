=begin
Input: A string
Output: A string

Rules:
- The input string contains a first name, a space, and a last name.
- Return a string that contains the last name, a comma, a space, and the first name.

Algorithm:
- Split the names.
- Use string interpolation to combine the names.
=end

def swap_name(names)
  first_name, last_name = names.split
  "#{last_name}, #{first_name}"
end

# def swap_name(name)
#   name.split.reverse.join(', ')
# end

p swap_name('Joe Roberts') == 'Roberts, Joe'
