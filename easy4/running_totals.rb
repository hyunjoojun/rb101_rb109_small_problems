=begin
input: array of numbers
output: array of numbers with each element has running total

rules:
- array can be empty.
- array may have one number or multiple numbers.
- input and output arrays have same number of elements.
- output array has elements that have the running total.

Algorithm:
- Set sum equal to 0
- Iterate through input array and add each numbers to the sum
- Return new array
=end

def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

# def running_total(array)
#   sum = 0
#   array.each_with_object([]) do |num, running_total_array|
#     running_total_array << sum += num
#   end
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []