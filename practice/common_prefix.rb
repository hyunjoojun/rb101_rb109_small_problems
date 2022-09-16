=begin
Write a method to find the longest common prefix string amongst an array of strings
If no common prefix, return empty string.
All given inputs are in lowercase letters a-z.

Input: An array of words
Output: A string, common prefix of all the words given

Rules:
- Find the longest common prefix of all the words in the input array.
- The input array only consists of words with lowercase letters.
- Return an empty string if there is no common prefix.

Algorithm:
- Get all the leading substrings of the shortest word of the array.
  - The index always should start from 0.
- After we get the substrings, check if all the words start from the substring.
  - Iterate through all the words in the array, check if all the words
    start from the substring.
  - Create an empty array for common prefix, if true, push the substring into the array.
  - Return the last string of the common prefix.
=end

def substrings(shortest_word)
  substrings = []
  0.upto(shortest_word.length - 1) do |length|
    substrings << shortest_word[0..length]
  end
  substrings
end

def common_prefix(array)
  shortest_word = array.min_by { |word| word.length }
  substrings = substrings(shortest_word)
  common_pre = []

  substrings.each do |substring|
    common_pre << substring if array.all? { |word| word.start_with?(substring) }
  end
  common_pre.empty? ? '' : common_pre.last
end

p common_prefix(%w(flower flow flight)) == 'fl'
p common_prefix(%w(dog racecar car)) == ''
p common_prefix(%w(interspecies interstellar interstate)) == 'inters'
p common_prefix(%w(throne dungeon)) == ''
p common_prefix(%w(throne throne)) == 'throne'
