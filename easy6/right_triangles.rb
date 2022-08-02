=begin
Input: An integer
Output: Print right triangle

Rules:
- Input integer is a positive integer, n.
- Display a right triangle whose side each have n stars.
- The right angle is on the lower right corner.

Algorithm:
- First line: number - 1 epmty spaces and 1 star.
- Second line: number - 2 empty spaces and 2 stars.
- Third line: number - 3 empty spaces and 3 stars.
- Fourth line: number - 4 empty spaces and 4 stars.
- Until last line which has number of stars.
=end

def triangle(length)
  length += 1

  length.times do |num|
    puts "#{' ' * (length - num)}#{'*' * num}"
  end
end

triangle(5)
triangle(9)
