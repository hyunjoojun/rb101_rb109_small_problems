=begin
Input = Two strings
Output = One string

Rules:
- Compare two strings' length.
- One is shorter than the other one.
- Concatenate shorter string, longer string, and shorter string again.
- Two strings will always have different lengths.

Algorithm:
- Compare two strings' length.
- Set two variables short and long, shorter string to short and longer string to long.
- Add strings together short + long + short.
=end

def short_long_short(word1, word2)
  if word1.length > word2.length
    word2 + word1 + word2
  else
    word1 + word2 + word1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
