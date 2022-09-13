=begin
Input: A nested array
Output: New nested array

Rules:
- Do not modify the original nested array.
- Exchange the colmns and rows of the original matrix.
- The method takes 3 x 3 matrix nested array.

Algorithm:
- Use zip method.
=end

def transpose(arrays)
  arrays[0].zip(arrays[1], arrays[2])
end

# def transpose(arrays)
#   arr1 = arrays[0]
#   arr2 = arrays[1]
#   arr3 = arrays[2]
#   new_arr = [[], [], []]

#   arr1.each_with_index do |num, idx|
#     new_arr[idx] << num
#     new_arr[idx] << arr2[idx]
#     new_arr[idx] << arr3[idx]
#   end
#   new_arr
# end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
