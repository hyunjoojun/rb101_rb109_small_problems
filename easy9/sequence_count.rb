=begin
Input: Two integers
Output: An array

Rules:
- The first argument is a count.
- The second argument is the first number of the array.
- The output array contains the same number of elements as the count argument.
- The values of each elements will be multiples of the starting number.
- The count argument is always a positive number including 0.
- If count argument is 0, return an emtpy array.
- The starting number argument can be any number.

Algorithm:
- Set up an empty array.
- count.times push the second argument number into the array.
- push number * incrementing number.
- Return the array.
=end

# def sequence(count, num)
#   array = []

#   count.times do |index|
#     array << num * (index + 1)
#   end

#   array
# end

def sequence(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
