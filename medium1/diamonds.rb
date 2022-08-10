=begin
Input: An integer
Output: Display a diamond in n x n grid

Rules:
- The input integer will always be an odd number.
- Display 4 pointed diamond in n x n grid where n is the input number.
- Use empty spaces and * to make a diamond.

Algorithm:
- Set number of stars = n - 2 * distance from center
- stars = '*' * number of stars.
- put the stars in the middle of the line.
- Once we print the top part of the diamond, repeat for the bottom part.
=end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(3)
diamond(9)
diamond(15)