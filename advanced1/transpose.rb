# Input: A nested Array
# Output: Rotated nested array

# Rules:
# The matrix has rows which are the inner arrays.
# The matrix has columns which are located at same index in each inner arrays.
# Return inner arrays with colums not the rows.

# matrix = [
#  [1, 5, 8],
#  [4, 7, 2],
#  [3, 9, 6]
#]
# Rows : [1, 5, 8]
#        [4, 7, 2]
#        [3, 9, 6]
# From all of the rows, first element has to be grouped together to get the first inner array.
# second elements grouped together to get the second inner array.
# third elements grouped together to get the third inner array.

def transpose(matrix)
  new_matrix = Array.new(matrix.size) { [] }
  0.upto(matrix.size - 1) do |index|
    matrix.each do |row|
      new_matrix[index] << row[index]
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
