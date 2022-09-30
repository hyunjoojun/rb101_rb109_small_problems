=begin
Input: Matrix array
Output: New array

Rules:
- Perform 90 degree rotation of a matrix.
- The matrix has rows which are the inner arrays.
- The matrix has columns which are located at same index in each inner arrays.
- Create a new row with first column but in reverse order.
- Meaning the last row's first column should come first.

Algorithm:
- Reverse the rows using transpose method.
=end

def rotate90(matrix)
  result = []
  column_size = matrix.first.size
  row_size = matrix.size

  0.upto(column_size - 1) do |column_index|
    new_row = (0...row_size).map { |row_index| matrix[row_index][column_index] }.reverse
    result << new_row
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
