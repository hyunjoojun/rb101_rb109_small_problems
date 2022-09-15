=begin
Input: An integer (row)
Output: An integer (sum of even numbers)

Rules:
- The first integer starts from 2 and increases by 2.
- The input integer represent the nth row of the numbers.
- For first row, there is one integer which is 2.
- For the second row, next integers are placed which are 4 and 6.
- For the third row, next 3 integers which are 8, 10, 12 and so on.
- Return the sum of numbers in the nth row.

Algorithm:
- Set up an empty array for rows.
- Create a row array and push them into rows array.
- Repeat until all rows are created.
- Sum the final row.
- Return the sum.
=end

def sum_even_nums(row_number)
  rows = []
  start_integer = 2

  (1..row_number).each do |current_row|
    rows << create_row(start_integer, current_row)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  loop do
    row << start_integer
    start_integer += 2
    break if row.length == row_length
  end
  row
end

p sum_even_nums(1) #== 2
p sum_even_nums(2) #== 10
p sum_even_nums(4) #== 68

# [2]
# [4, 6]
# [8, 10, 12]
# [14, 16, 18, 20]