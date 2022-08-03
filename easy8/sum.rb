=begin
Input: An array
Output: An integer

Rules:
- Input array contains integers.
- Return the sum of the sums of each leading subsequence for that array.
- The input array always contains at least one number.

Algorithm:
- Set up an empty array.
- Push in the first number, then first and second number,
then first, second, and third and so on.
- Add up the numbers.
=end

def sum_of_sums(numbers)
  all_numbers = []
  numbers.length.times do |idx|
    all_numbers << numbers[0..idx]
  end
  all_numbers.flatten.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
