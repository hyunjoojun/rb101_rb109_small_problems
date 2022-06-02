=begin
input: string
output: string in a box

rules:
- Use + - | to make a box.
- When the string is empty:
  first line : +--+
  second line: |  |
  third line:  |  |
  fourth line: |  |
  fifth line:  +--+
- The string goes in the middle of the box.

Algorithm:
- Empty spaces == text.size + 2
- '-' == text.size + 2
- put text on the third line.
=end

def print_in_box(text)
  horizontal_rule = "+#{'-' * (text.size + 2)}+"
  empty_line = "|#{' ' * (text.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{text} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('')
print_in_box('hello')
print_in_box('So coooooooooooool!! Love it!!! :)')
