=begin
input = An array
output = An array contatining every other element of input array.
         Start from first element: 1st, 3rd, 5th and so on.
=end

# def oddities(array)
#   new_array = []
#   array.each.with_index do |ele, idx|
#     new_array << ele if idx.even?
#   end
#   new_array
# end

# def oddities(array)
#   new_array = []
#   index = 0
#   while index < array.size
#     new_array << array[index]
#     index += 2
#   end
#   new_array
# end

def oddities(array)
  array.select.with_index do |ele, idx|
    ele if idx.even?
  end
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
