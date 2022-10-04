# Your goal is to write the group_and_count method, which should receive and array as
# unique parameter and return a hash. Empty or nil input must return nil instead of a hash.
# This hash returned must contain as keys the unique values of the array, and as values the
# counting of each value.
# Example usage:
# input = [1,1,2,2,2,3]
# group_and_count(input)# == {1=>2, 2=>3, 3=>1}
# The following methods were disabled:
# Array#count
# Array#length

# Input: An Array
# Output: A count hash

# Rules:
# Each unique element of the given array are the keys for the hash.
# Values will be the count of the element, how many times it appears in the array.
# Return the count Hash.
# Do not use count method or length method.

# Set up an empty Hash.
# Iterate through each element of the array.
# If the key does not exist, Set the key and value equal to 1.
# If the key exists, add 1 to the value.
# Return the hash.

def group_and_count(input)
  return nil if input.nil? || input.empty?

  count_hash = {}
  input.each do |ele|
    if count_hash.has_key?(ele)
      count_hash[ele] += 1
    else
      count_hash[ele] = 1
    end
  end
  count_hash
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}
p group_and_count([]) == nil
p group_and_count(nil) == nil
