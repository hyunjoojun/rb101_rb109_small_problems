# Given an array of integers , Find the minimum sum which is obtained from summing each Two
# integers product .
# Notes
# Array/list will contain positives only .
# Array/list will always have even size.

# Input: An Array of numbers
# Output: The minimum sum of two integers prodcuts.

def min_sum(arr)
  sorted_nums = arr.sort
  sum = 0

  until sorted_nums.empty?
    max_num = sorted_nums.pop
    min_num = sorted_nums.shift
    sum += (max_num * min_num)
  end
  sum
end

p min_sum([5,4,2,3]) == 22
p min_sum([12,6,10,26,3,24]) == 342
p min_sum([9,2,8,7,5,4,0,6]) == 74
p min_sum([1,2]) == 2
p min_sum([]) == 0
