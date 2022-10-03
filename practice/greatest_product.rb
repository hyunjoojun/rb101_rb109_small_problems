# Complete the greatestProduct method so that it'll find the greatest product of five
# consecutive digits in the given string of digits.
# For example:
# greatestProduct("123834539327238239583") // should return 3240
# The input string always has more than five digits.

# Input: A string (number)
# Output: An integer

# Rules:
# Return the greatest product of five consecutive digits.
# The input number is a string.

# We need all the substrings that are 5 length long.
# Get product of them, return the greatest number.

def get_substrings(str)
  substrings = []
  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      substrings << str[idx1..idx2] if str[idx1..idx2].length == 5
    end
  end
  substrings
end

def greatest_product(n)
  substrings = get_substrings(n)

  products = substrings.map do |sub|
    if sub.include?('0')
      0
    else
      sub.to_i.digits.inject(:*)
    end
  end
  products.max_by { |num| num }
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
