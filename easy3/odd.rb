=begin
Input = An array
Output = An array

Rules:
- Return an array that contains every other element of the input array.
- 1st, 3rd, 5th, and so on elements should be in the output array.
- Return an empty array if the input is an empty array.

Algorithm:
- Iterate through each element of the input array.
- Select elements that has index with even number, including 0.
=end

def oddities(array)
  array.select.with_index { |_, idx| idx.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# further exploration
def oddities2(array)
  array.select.with_index { |_, idx| idx.odd? }
end

def oddities3(array)
  new_arr = []

  array.each_with_index do |ele, idx|
    new_arr << ele if idx.odd?
  end
  new_arr
end

p oddities2([2, 3, 4, 5, 6]) == [3, 5]
p oddities3(['abc', 'def']) == ['def']
