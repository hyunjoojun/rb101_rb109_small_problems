=begin
input: array of integers between 0 and 19
output: sorted array based on the English words

rules:
- The final returned array should be in integers.
- The array is sorted based on the English words.

Algorithm:
- Set a hash that has integers and English words.
- Set an empty array which will be the sorted array.
- Iterate through each integers in the array and convert them to words using the hash.
- Sort the words by alphabetical order.
- Convert the words back to integers.
- Those integers are pushed to the empty array.
- Return the final sorted array.
=end

# NUMBERS = {
#   0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
#   7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve',
#   13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
#   18 => 'eighteen', 19 => 'nineteen'
# }

# def alphabetic_number_sort(numbers)
#   numbers_in_words = []
#   sorted_numbers = []

#   numbers.each do |num|
#     numbers_in_words << NUMBERS[num]
#   end

#   sorted_words = numbers_in_words.sort
#   sorted_words.each do |word|
#     NUMBERS.each do |key, _|
#       if word == NUMBERS[key]
#         sorted_numbers << key
#       end
#     end
#   end
#   sorted_numbers
# end

NUMBER_WORDS = %w(zero one two three four five six seven eight nine
  ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort { |num1, num2| NUMBER_WORDS[num1] <=> NUMBER_WORDS[num2] }
end

p alphabetic_number_sort((0..19).to_a)
