=begin
Input: An integer
Output: Display a diamond in n x n grid

Rules:
- The input integer will always be an odd number.
- Display 4 pointed diamond in n x n grid where n is the input number.
- Use empty spaces and * to make a diamond.

Algorithm:
- 1st line upto middle line, the number of stars increase.
- 1st line starts with 1 star.
- Until the middle line (n / 2), number of stars increase by 2.
- The middle line the number of stars = n
- The second half of diamond can be repeated from middle to 1.
=end

def diamond(length)
  middle = (length / 2) + 1
  number_of_stars = 1

  middle.times do
    puts ('*' * number_of_stars).center(length)
    number_of_stars += 2
  end

  number_of_stars -= 4
  (length / 2).times do
    puts ('*' * number_of_stars).center(length)
    number_of_stars -= 2
  end
end

diamond(3)
diamond(9)
diamond(15)
