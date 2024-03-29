=begin
Input: A string
Output: true or false

Rules:
- A collection of spelling blocks has two letters per block.
- If both letters in block is used in the input string return false.
- Return true otherwise.
- It should work for both upcase letters and downcase letters.

Algorithm:
- Set up a constant for a nested array of letter pairs.
- Iterate through each pair and check if both letters exist in the string.
- If both exist in the string, return false, otherwise return true.
=end

LETTERS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'],
['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(word)
  new_word = word.upcase
  both_used = LETTERS.select do |pair|
    new_word.include?(pair[0]) && new_word.include?(pair[1])
  end
  both_used.empty?
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
