=begin
input: two arrays
output: one array containing all values from the two arrays

rules:
- Take all elements from two arrays and combine them into one array.
- No duplicate elements.

Algorithm:
- Set an empty array.
- Add the two arrays together.
- Iterate through every elements.
- Push elements into the empty array.
- If there is any duplicate, don't push that element.
- Return new array.
=end

# def merge(array_1, array_2)
#   array_1 | array_2
# end

# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
# end

def merge(arr1, arr2)
  merged_array = []

  added_arr = arr1 + arr2
  added_arr.each do |ele|
    merged_array << ele unless merged_array.include?(ele)
  end
  merged_array
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]