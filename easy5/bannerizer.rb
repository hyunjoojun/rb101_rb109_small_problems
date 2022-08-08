=begin
Input: A string
Output: Print a string in a box

Rules:
- The input text will fit in one line.
- The text should be in the middle of the box.

Algorithm:
- First line will be horizontal line.
- Second to fourth lines will be vertical lines.
- The last line will be same as the first line.
- The text will be on the middle of third line.
=end

MAX_LENGTH = 76

def print_in_box(text)
  spaces = text.length > MAX_LENGTH ? MAX_LENGTH : text.length
  horizontal = '+' + '-' * (spaces + 2) + '+'
  vertical = '|' + ' ' * (spaces + 2) + '|'

  puts horizontal
  puts vertical
  puts "| #{text} |"
  puts vertical
  puts horizontal
end

print_in_box('hi')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
