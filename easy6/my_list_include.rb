=begin
Input: An array and an element
Output: Boolean

Rules:
- Check if the element exists in the array.
- The method returns true or false.
- If the value is in the array returns true, otherwise false.
- Do not use include? method.

Algorithm:
- Iterate through the array.
- Check if the element is equal to the input argument.
- Return boolean.
=end

def include?(arr, value)
  arr.any? { |ele| ele == value }
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
