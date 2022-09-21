# You are given an array of words, where each words consists of lowercase English letters.
# In one operation, select any two adjacent words (words[i - 1] and words[i]) that are
# anagrams of each other, and delete words[i] from words. Keep performing this operation
# as long as you can select an index that satisfies the conditions.
# NOTE: a valid index is such that 0 < i < words.length
# Return words after performing all operations. It can be shown that selecting the indices
# for each operation in any arbitrary order will lead to the same result.
# An Anagram is a word or phrase formed by rearranging the letters of a different word or
# phrase using all the original letters exactly once. For example, "dacb" is an anagram of "abdc".

# Example 1:
# Input: words = ["abba","baba","bbaa","cd","cd"]
# Output: ["abba","cd"]
# Explanation:
# One of the ways we can obtain the resultant array is by using the following operations:
# - Since words[2] = "bbaa" and words[1] = "baba" are anagrams, we choose index 2 and delete words[2].
# Now words = ["abba","baba","cd","cd"].
# - Since words[1] = "baba" and words[0] = "abba" are anagrams, we choose index 1 and delete words[1].
# Now words = ["abba","cd","cd"].
# - Since words[2] = "cd" and words[1] = "cd" are anagrams, we choose index 2 and delete words[2].
# Now words = ["abba","cd"].
# We can no longer perform any operations, so ["abba","cd"] is the final answer.

# Example 2:
# Input: words = ["a","b","c","d","e"]
# Output: ["a","b","c","d","e"]
# Explanation:
# No two adjacent strings in words are anagrams of each other, so no operations are performed.

# Rules:
# Two adjacent words (words[i - 1] and words[i])
# Delete words[i] if they are anagrams.
# Valid index 0 < i < words.length
# ex: ["abba","baba","bbaa","cd","cd"]
# start from index 1 ["abba", "baba"]
# they are anagrams so delete "baba"
# ["abba", "cd"]

# Compare first two words and check if they are anagrams
# If they are, delete the second word and repeat the process.
# If they are not anagrams, do not delete any.
# Compare second and third words. Repeat the comparing and deleting.

def remove_anagrams(array)
  anagrams_idx = []
  1.upto(array.length - 1) do |index|
    anagrams_idx << index if (array[index].chars.sort == array[index - 1].chars.sort)
  end

  anagrams_idx.reverse_each do |idx|
    array.delete_at(idx)
  end
  array
end

p remove_anagrams(["bat","tab","all","tea","eat"]) == ["bat","all","tea"]
p remove_anagrams(['a','b','c','d','e']) == ['a','b','c','d','e']
p remove_anagrams(["dog", "god"]) == ["dog"]
p remove_anagrams(["abba","baba","bbaa","cd","cd"]) == ["abba","cd"]
p remove_anagrams(["day","tina", "anit","house","note", "tone"]) == ["day", "tina", "house","note"]
