=begin
You are going to be given an array of integers. Your job is to take that array
and find an index N where the sum of the integers to the left of N is equal to
the sum of the integers to the right of N. If there is no index that would make
this happen, return -1.

For example:
Let's say you are given the array [1,2,3,4,3,2,1]:
Your function will return the index 3, because at the 3rd position of the array,
the sum of left side of the index ({1,2,3}) and the sum of the right side
of the index ([3,2,1]) both equal 6.

Another one:
You are given the array [20,10,-80,10,10,15,35]
At index 0 the left side is []
The right side is [10,-80,10,10,15,35]
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

Input: An Array
Output: An integer, the index of an element

Rules:
- If the sum of the entire array is equal to 0, then return 0.
- The input array has integers as elements.
- Return an index where the sum of integers to the left is equal to the sum
of integers to the right.
- Return -1 if the entire array is not equal to 0 nor there is no possible
equal sum to the left and right.

Algorithm:
- Return 0 if the sum of all integers is equal to 0.
- If not, iterate through the array and check if left side sum is equal to the
right side sum.
- First compare numbers starting from index 1 to the end to number 0.
- Get the first element and compare it to the sum of numbers starting
from index 2 to the end.
- If they are not equal, get the first 2 elements and compare it
to the sum of numbers starting from index 3 to the end.
- If the sums equal each other, return the index (right sid starting index - 1)
=end

def left_side_numbers(array)
  left_side_numbers = []
  sum = 0

  array.each do |num|
    left_side_numbers << sum += num
  end
  left_side_numbers.prepend(0)
end

def find_even_index(array)
  return 0 if array.sum == 0
  left_side_numbers = left_side_numbers(array)
  right_side_numbers = []

  1.upto(array.length) do |starting_index|
    right_side_numbers << array[starting_index..]
  end

  right_side_numbers.each_with_index do |right, index|
    return index if left_side_numbers[index] == right.sum
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
