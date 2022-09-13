=begin
Input: odd integer greater than 7
Output: Display 8 pointed star

Rules:
- The input number is an odd integer.
- Display 8 pointed star in n x n grid.

Algorithm:
- 3 stars are used.
- n number of lines are printed.
- The middle line has n number of stars, all other lines are 3 stars.
=end

def star(n)
  blank_spaces = (n - 3) / 2
  loop do
    puts ('*' + ' ' * blank_spaces + '*' + ' ' * blank_spaces + '*').center(n)
    blank_spaces -= 1
    break if blank_spaces < 0
  end

  puts '*' * n

  blank_spaces = 0
  loop do
    puts ('*' + ' ' * blank_spaces + '*' + ' ' * blank_spaces + '*').center(n)
    blank_spaces += 1
    break if blank_spaces > (n - 3) / 2
  end
end

star(7)
star(9)
