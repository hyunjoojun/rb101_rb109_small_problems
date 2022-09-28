=begin
Input: An integer
Output: Display a diamond in n x n grid

Rules:
- The input integer will always be an odd integer.
- Display a 4 pointed diamond in n x n grid.

Algorithm:
- The middle line gets n number of stars.
- Displays n number of lines.
- The first line will always start with 1 star.
- The number of stars increase by 2 every line until we get to the middle line.
- After the middle line, number of stars decrease by 2 until we get to 1 star.
=end

def diamond(number)
  middle = number / 2 + 1
  number_of_stars = 1

  middle.times do
    puts ('*' * number_of_stars).center(number)
    number_of_stars += 2
  end

  number_of_stars = number - 2

  until number_of_stars < 1
    puts ('*' * number_of_stars).center(number)
    number_of_stars -= 2
  end
end

diamond(3)
diamond(9)
diamond(15)
