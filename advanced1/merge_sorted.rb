# Input: Two Arrays
# Output: An array that's sorted.

# Rules:
# Cannot sort the result array.
# Move one element at a time in the proper order.
# Do not mutate the input arrays.

# We need to iterate through each array.


def merge(array1, array2)
  result = []
  index = 0

  array1.each do |value|
    while index < array2.size && value >= array2[index]
      result << array2[index]
      index += 1
    end
    result << value
  end

  result.concat(array2[index..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
