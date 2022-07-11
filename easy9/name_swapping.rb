=begin
Input: first name and last name string
Output: last name, a comma, first name string

Rules:
- Input string has first name and last name with a space in between.
- Output string has last name, a comma, a space, and the first name.

Algorithm:
- Split the name to get an array of names.
- Return last name, a comma, a space, and the first name.
=end

def swap_name(full_name)
  first_name, last_name = full_name.split
  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts')