# Sum of Pairs
# Given a list of integers and a single sum value, return the first two values (parse from
# the left please) in order of appearance that add up to form the sum.
# If there are two or more pairs with the required sum, the pair whose second element has
# the smallest index is the solution.
# sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
# == [3, 7]
# sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
# == [4, 2]
# sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)
# sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * the correct answer is the pair whose second value has the smallest index
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.
# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure
# your code doesn't time out.

# Input: An array of numbers, An integer(sum)
# Output: An array (pair of numbers)

# Rules:
# Return an array of two numbers that adds up to the sum ( Input number ).
# The two numbers come from the input array.
# If there are multiple pairs that can be added to get the sum, return the pair whose second
# value has the smallest index.
# If there is none, return nil.
# Negative numbers and duplicate numbers can and will appear.

# Get all the possible pairs.
# From all the pairs, select the pairs that would equals to 's' when added.
# If there are multiple pairs, choose the second number who has smallest index.

def sum_pairs(ints, s)
  pairs = []
  0.upto(ints.length - 1) do |idx1|
    idx1.upto(ints.length - 1) do |idx2|
      pairs << [ints[idx1], ints[idx2]] if ints[idx1] + ints[idx2] == s && idx1 != idx2
    end
  end
  pairs.max_by { |pair| ints.reverse.index(pair[-1]) }
end

# def sum_pairs(ints, s)
#   existed = {}

#   ints.each do |num|
#     if existed[s - num] == true
#       return [s - num, num]
#     else
#       existed[num] = true
#     end
#   end
#   nil
# end

p sum_pairs([11, 3, 7, 5], 10) == [3, 7]
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
p sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1, 1]
p sum_pairs([0, 0, -2, 3], 2) == nil
