=begin
Input: A string
Output: Print a string in a box

Rules:
- The input string will always fit the terminal window.
- Create a box and print it with a string in the middle of the box.

Algorithm:
- First line: print '+' and '-' * length of the text and another '+'
- Second line: print '|' and ' ' * length of the text and another '|'
- Third line: print '|' and the text and another '|'
- Fourth line: Repeat second line.
- Last line: Repeat the first line.
=end

def print_in_box(text)
  horizontal_line = "+#{'-' * (text.length + 2)}+"
  empty_line = "|#{' ' * (text.length + 2)}|"

  puts horizontal_line
  puts empty_line
  puts "| #{text} |"
  puts empty_line
  puts horizontal_line
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box('So coooooooooooool!! Love it!!! :)')
