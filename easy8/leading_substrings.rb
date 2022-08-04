=begin
Input: A string
Output: An array of substrings

Rules:
- Return an array with leading substrings.
- All substrings begin with the first letter of the input string.
- The elements of the array should be sorted from the shortest to the longest.

Algorithm:
- Set up an empty array.
- The substrings array will contain string's length number of elements.
- Push substring that start with 0 index. string[0..index]
- Return the array.
=end

def leading_substrings(string)
  string.length.times.map do |idx|
    string[0..idx]
  end
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
