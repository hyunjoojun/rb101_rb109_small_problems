# Given a array, swap every two adjacent elements and return the re sorted array. You must
# solve the problem without modifying the values in the array's elements (i.e., only
# elements themselves may be changed.)

# Given an array and returns an array where each element is swapped with the
# adjacent element.

# Input: An Array
# Output: Swapped array

# arr[0], arr[1] = arr[1], arr[0]
# arr[2], arr[3] = arr[3], arr[2]
# Index starts from 0, starting index will be even index only.

def sort_pairs(arr)
  arr.each_with_index do |num, idx|
    next if arr[idx] == nil || arr[idx + 1] == nil

    arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if idx.even?
  end
end

p sort_pairs([1,2,3,4]) == [2,1,4,3]
p sort_pairs([]) == []
p sort_pairs([1]) == [1]
p sort_pairs([4,6,8,10,4,12]) == [6,4,10,8,12,4]
p sort_pairs([1, 2, 3]) == [2, 1, 3]
