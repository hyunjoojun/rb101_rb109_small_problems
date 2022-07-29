=begin
Input = An array
Output = An array

Rules:
- Input array contains integers elements.
- Retuned array and input array have same number of elements.
- Each element has the running total from the input array.

Algorithm:
- Set up a sum = 0
- Iterate through numbers and add to the sum.
- Return a new array with running total.
=end

# def running_total(numbers)
#   sum = 0
#   numbers.map { |num| sum += num }
# end

# def running_total(numbers)
#   sum = 0
#   numbers.each_with_object([]) do |num, arr|
#     arr << sum += num
#   end
# end

def running_total(numbers)
  total = []
  numbers.inject(0) do |sum, num|
    total[total.length] = sum + num
  end
  total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
