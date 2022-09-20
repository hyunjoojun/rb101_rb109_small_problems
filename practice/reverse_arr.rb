# Write a function that reverses an array.
# You must reverse the input array in-place without using #reverse or #reverse!.

# Input: An Array
# Output: Reversed array

# Rules:
# - Do not use reverse or reverse! methods.
# Reverse the order of elements in the input array.

# Create an empty array called new_array.
# Increment the index starting from 0, upto the input array's length - 1.
# Prepend each element from the input array into the new_array.

def reverse_arr(array)
  new_array = []

  0.upto(array.length - 1) do |index|
    new_array.prepend(array[index])
  end
  new_array
end

p reverse_arr(["a", "b", "c", "d"]) == ["d", "c", "b", "a"]
p reverse_arr(["h", "e", "l", "l", "o"]) == ["o", "l", "l", "e", "h"]
p reverse_arr(["H","a","n","n","a","h"]) == ["h","a","n","n","a","H"]
p reverse_arr([1,2,3,4,5,6]) == [6,5,4,3,2,1]
p reverse_arr(["a",1,"b",2]) == [2,"b",1,"a"]
