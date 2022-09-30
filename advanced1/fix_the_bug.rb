def my_method(array)
  if array.empty?
    []
  elsif array.length == 1
    [7 * array.first]
  else
    array.map do |value|
      value * value
    end
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# []
# [21]
# [9, 16]
# [25, 36, 49]
