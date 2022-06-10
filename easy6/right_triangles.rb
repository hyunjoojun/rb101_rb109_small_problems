=begin
input: positive integer
output: display a right triangle with sides of n stars.

rules:
- The triangle is drawn with stars(*).
- The right angle is on the lower-right side of the triangle.
- The sides have n stars determine by the input number.

Algorithm:
- The first line starts with n - 1 blank spaces and one star at the end.
- The second line has n - 2 blank spaces and 2 stars at the end.
- The third line has n - 3 blank spaces and 3 stars at the end.
- Number of lines equals to the input number.
- The last line has n stars with no spaces.
=end

def triangle(length)
  stars = 1

  loop do
    puts " " * (length - stars) + "*" * stars

    stars += 1
    break if stars > length
  end

end

triangle(5)
triangle(9)