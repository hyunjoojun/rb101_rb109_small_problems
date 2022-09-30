# Complete the solution so that it returns the number of times the search_text is found
# within the full_text.

# Input: Two strings
# Output: An Integer

# Rules:
# First string has letters or any punctuations, full text.
# The second string is the search text.
# Return how many times the search text appears in the full text.

# Count how many it appears in the text.
# Retun the count.

def solution(full_text, search_text)
  length = search_text.length
  full_text.count(search_text) / length
end

p solution('aa_bb_cc_dd_bb_e', 'bb') == 2
p solution('aaabbbcccc', 'bbb') == 1
