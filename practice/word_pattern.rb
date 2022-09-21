# Given a pattern and a string s, find if s follows the same pattern.
# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.

# Example 1:
# Input: pattern = "abba", s = "dog cat cat dog"
# Output: true

# Example 2:
# Input: pattern = "abba", s = "dog cat cat fish"
# Output: false

# Example 3:
# Input: pattern = "aaaa", s = "dog cat cat dog"
# Output: false

# Input: Two strings, pattern and words (s)
# Output: true or false

# Rules:
# Each letter in pattern represents a word.
# If the letter is different, the word should be different from the other word.
# 'aa', we need two same words.
# 'aaa' we need three same words.
# 'ab' we need two different words.
# If the pattern is empty, the words also should be empty.
# If the pattern matches the words, return true otherwise false.

# Algorithm:

def pattern_hash(pattern)
  pattern_hash = {}
  pattern_count = 0
  pattern.chars.each do |char|
    if pattern_hash[char].nil?
      pattern_hash[char] = pattern_count
      pattern_count += 1
    end
  end
  pattern_hash
end

def words_hash(words)
  words_hash = {}
  words_count = 0
  words.split(' ').each do |word|
    if words_hash[word].nil?
      words_hash[word] = words_count
      words_count += 1
    end
  end
  words_hash
end

def word_pattern(pattern, words)
  pattern_hash = pattern_hash(pattern)
  words_hash = words_hash(words)
  pattern_arr = pattern.chars.map { |char| pattern_hash[char] }
  words_arr = words.split(' ').map { |word| words_hash[word] }
  pattern_arr == words_arr
end

p word_pattern("aa", "aaa") == false
p word_pattern("abba", "dog cat cat dog") == true
p word_pattern("abba", "dog cat cat fish") == false
p word_pattern("abbc", "dog cat cat fish") == true
p word_pattern("", "") == true
p word_pattern("abcdefbag", "this is a scalable test case is this true") == true
p word_pattern("aaaa", "dog cat cat dog") == false
