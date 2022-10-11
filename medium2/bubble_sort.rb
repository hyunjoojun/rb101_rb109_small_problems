=begin
Input: An array
Output: A sorted array

Rules:
- Sort the array using the bubble sort algorithm.
- Compare 1st and 2nd elements, Is the 1st greater than the 2nd?
- If yes exchange them, else no exchange.
- Compare 2nd and 3rd elemets, Is the 2nd greater than the 3rd?
- If yes exchange them, else no exchange.
- Repeat until we compare the last 2 elements.
- The input array will be mutated.
- The array will contain at least 2 elements.

Algorithm:
- We have to repeat the process, meaning comparing the elements
  ( array's length - 1 ) times.
- If element1 > element2, exchange.
- If not, no exchange.
- Return the array that got mutated.
=end

def bubble_sort!(arr)
  loop do
    swapped = false
    arr.each_with_index do |num, idx|
      next if idx == 0
      if arr[idx - 1] > num
        arr[idx - 1], arr[idx] = arr[idx], arr[idx - 1]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
