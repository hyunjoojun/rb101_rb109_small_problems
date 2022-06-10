=begin
input: array and a search value
output: boolean

rules:
- Takes two arguments.
- If search value is included in the array return true.
- If search value is not in the array return false.
- Do not use Array#include? method.
- Empty array may be used.

Algorithm:
- Iterate through the array.
- Return true if element is equal to the value.
- Else, return false.
=end

def include?(arr, value)
  arr.each do |ele|
    return true if ele == value
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false