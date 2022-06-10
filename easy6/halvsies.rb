=begin
input: array
output: two arrays(pair of nested arrays)

rules:
- If array has even number of elements, divide by half.
- If the array has odd number of elements, the middle element placed in first half.
- Return pair of nested arrays.
- If there is only one element, it's placed in first half, second half is empty array.
- If it's empty array , return two empty arrays.

Algorithm:
- if length of the array is even, divide by half (divisor).
- if length is odd, divide by half and add one (divisor).
- Set first half equal to first half array.
- Set rest of them into second half array.
- push two arrays into the empty array.
- Return the final array.
=end

# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

def halvsies(arr)
  if arr.length.even?
    divisor = arr.length / 2
    first_half = arr.first(divisor)
    second_half = arr.last(divisor)
  elsif arr.length.odd?
    divisor = arr.length / 2 + 1
    first_half = arr.first(divisor)
    second_half = arr.last(divisor - 1)
  end
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
