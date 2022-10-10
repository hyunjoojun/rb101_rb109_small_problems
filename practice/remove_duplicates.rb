# You are given a string s consisting of lowercase English letters. A duplicate removal
# consists of choosing two adjacent and equal letters and removing them.
# We repeatedly make duplicate removals on s until we no longer can.
# Return the final string after all such duplicate removals have been made. It can be
# proven that the answer is unique.

def duplicates?(characters)
  characters.each.with_index do |char, idx|
    next if idx == 0
    return true if char == characters[idx - 1]
  end
  false
end

def remove_duplicates(letters)
  while duplicates?(letters.chars)
    characters = letters.chars
    characters.each.with_index do |char, idx|
      next if idx == 0
      if char == characters[idx - 1]
        letters.sub!(char, '')
        letters.sub!(characters[idx - 1], '')
      end
    end
  end
  letters
end

p remove_duplicates("aaybbyz") == "z"
p remove_duplicates("a") == "a"
p remove_duplicates("abbca") == "aca"
p remove_duplicates("aabbcc") == ""
p remove_duplicates("aderg") == "aderg"
p remove_duplicates("azxxzy") == "ay"
p remove_duplicates("abbaca") == "ca"
