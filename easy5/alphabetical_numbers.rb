=begin
Input: An array
Output: An array

Rules:
- The input array contains numbers between 0 and 19.
- Sort the numbers by the english words for each number.
- Return an array of integers in the order above.

Algorithm:
- Write an array that has numbers in words.
- Convert all the numbers into words using the array.
- Create an array of words and sort them.
- Convert those words into the numbers.
- Return the array of numbers.
=end

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end

def alphabetic_number_sort(numbers)
  words = numbers.map do |number|
    NUMBER_WORDS[number]
  end

  sorted_arr = words.sort

  sorted_arr.map do |word|
    NUMBER_WORDS.index(word)
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
