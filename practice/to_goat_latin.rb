# You are given a string sentence that consist of words separated by spaces. Each word
# consists of lowercase and uppercase letters only.
# We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig
# Latin.) The rules of Goat Latin are as follows:
# If a word begins with a vowel ('a', 'e', 'i', 'o', or 'u'), append "ma" to the end of the
# word.
# For example, the word "apple" becomes "applema".
# If a word begins with a consonant (i.e., not a vowel), remove the first letter and append
# it to the end, then add "ma".
# For example, the word "goat" becomes "oatgma".
# Add one letter 'a' to the end of each word per its word index in the sentence, starting
# with 1.
# For example, the first word gets "a" added to the end, the second word gets "aa" added to
# the end, and so on.
# Return the final sentence representing the conversion from sentence to Goat Latin.

# Rules:
# If the word starts with vowels, 'ma' is pushed to the end of the word.
# If the word does not start with vowels, the first letter moves to the end then add 'ma'.
# All the word gets 'a' at the end ('a' * index + 1)
# Input sentence has words separated by spaces.
# Only consists of words in lowercase and uppercase letters.

# Split the input sentence by words.
# Iterate through each word, check if it starts with vowels.
# If it does, append 'ma' to the end of the word.
# If it's not starting with vowels, push the first letter to the end of the word
# and also add 'ma' to the end.
# Add all 'a' to the end of the words ('a' * (index + 1))

VOWELS = %w(a e i o u)

def to_goat_latin(sentence)
  words = sentence.split.each do |word|
    if VOWELS.include?(word[0])
      word << 'ma'
    else
      first_letter = word.chars.shift
      word << first_letter << 'ma'
      word.sub!(word[0], '')
    end
  end
  add_a(words).join(' ')
end

def add_a(words)
  words.map.with_index do |word, idx|
    word + ('a' * (idx + 1))
  end
end

p to_goat_latin("The quick brown fox jumped over the lazy dog") == "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
p to_goat_latin("I speak Goat Latin") == "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
