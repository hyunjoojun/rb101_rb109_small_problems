=begin
input: two arrays
output: combined array with elements taken in alternation

rules:
- Input arrays are not empty.
- Two arrays have the same number of elements.
- Elements should alternate.

Algorithm:
- Set an empty array.
- Set index starting 0.
- Take the first array of first element, push it into the empty array.
- Take the second array of first element, push it into the array.
- Increment index by 1.
- Repeat the process until index is equal to array's length.
- Return the new array.
=end

def interleave(arr1, arr2)
  new_arr = []
  index = 0

  loop do
    new_arr << arr1[index] << arr2[index]
    index += 1

    break if index == arr1.length
  end
  new_arr
end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']