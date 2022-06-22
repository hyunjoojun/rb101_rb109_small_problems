=begin
input: array of numbers
output: integer (sum)

rules:
- Input array always contains at least one number.
- The method should return the sum of sums.
- The sum of sums of each leading subsequence for the input array.

Algorithm:
- Add all numbers to get the sum.
- Get rid of last number in the array and add all numbers.
- Repeat the process until array is empty.
- Add up the sum to get the total.
=end

def sum_of_sums(numbers)
  sum = 0
  loop do
    sum += numbers.inject(:+)
    numbers.pop
    break if numbers.empty?
  end
  sum
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])