# You are given a string s consisting of lowercase English letters. A duplicate removal
# consists of choosing two adjacent and equal letters and removing them.
# We repeatedly make duplicate removals on s until we no longer can.
# Return the final string after all such duplicate removals have been made. It can be
# proven that the answer is unique.

def duplicates?(string)
  boolean = string.chars.map.with_index do |char, idx|
    next if idx == 0
    char == string[idx - 1]
  end
  boolean.any? { |ele| ele == true }
end

def delete_letters(string)
  chars = string.split('')
  prev_char = chars.last

  (chars.length - 2).downto(0) do |n|
    char = chars[n]

    if char == prev_char
      chars.delete_at(n + 1)
      chars.delete_at(n)
    end

    prev_char = char
  end

  chars.join('')
end

def remove_duplicates(string)
  while duplicates?(string)
    string = delete_letters(string)
  end
  string
end

p remove_duplicates("aaybbyz") == "z"
p remove_duplicates("a") == "a"
p remove_duplicates("abbca") == "aca"
p remove_duplicates("aabbcc") == ""
p remove_duplicates("aderg") == "aderg"
p remove_duplicates("azxxzy") == "ay"
p remove_duplicates("abbaca") == "ca"
