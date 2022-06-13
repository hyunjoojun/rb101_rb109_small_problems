=begin
input: string
output: next to last word

rules:
- Input string contains words.
- Return the next to last word in the string.
- Words are any sequence.
- They don't contain blanks.
- Input will always contain at least two words.

Algorithm:
- Separate the string into words.
- Need to select the next to last word.
- Return the word.
=end

# def penultimate(words)
#   arr = words.split
#   arr[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

def middle_word(words)
  arr = words.split
  return words if arr.empty? || arr.length < 2

  if arr.length.odd?
    middle = arr.length / 2
    arr[middle]
  elsif arr.length.even?
    middle = arr.length / 2
    arr[middle - 1] + " " + arr[middle]
  end
end

p middle_word("Hi")
p middle_word(" ")
p middle_word("Hi my name is Hyunjoo.")
p middle_word("Launch School is great!")