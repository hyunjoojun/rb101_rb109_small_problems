=begin
Input: A string
Output: Print a string in a box

Rules:
- The input text will fit in one line.
- The text should be in the middle of the box.

Algorithm:
- horizontal = '+' + '-' * length + 2 + '+'
- empty = '|' + ' ' * length + 2 + '|'
- length = string.length
- middle = '|' + text + '|'
=end

MAX_LENGTH = 76

def split_text(text)
  multiline_text = []
  loop do
    if text.length > MAX_LENGTH
      multiline_text << "| #{text.slice!(0..MAX_LENGTH - 3)} |"
    else
      filler = ' ' * (MAX_LENGTH - text.length - 2)
      multiline_text << "| #{text.slice!(0..)}#{filler} |"
    end
    break if text.length == 0
  end

  multiline_text
end

def print_in_box(text)
  spacer = text.length > MAX_LENGTH ? MAX_LENGTH : (text.length + 2)
  horizontal = '+' + '-' * spacer + '+'
  empty = '|' + ' ' * spacer + '|'

  if text.length < MAX_LENGTH
    middle = "| #{text} |"
  elsif text.length > MAX_LENGTH
    middle = split_text(text)
  end

  puts [horizontal, empty, middle, empty, horizontal]
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Life is short and we have never too much time for gladdening the' +
  'hearts of those who are traveling the dark journey with us. Oh be swift to' +
  'love, make haste to be kind. -Henri Frederic Amiel')
