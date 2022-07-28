=begin
Input = String
Output = Boolean

Rules:
- Return true if the input string is palindrome.
- Return false if the input string is not palindrome.
- Palindrome reads the same forward and backward.
- Case, punctuation, and spaces matters.

Algorithm:
- Check if input string is equal to string.reverse.
=end

# def palindrome?(words)
#   words == words.reverse
# end

def palindrome?(obj)
  counter1 = 0
  counter2 = obj.size - 1
  while counter1 < counter2
    return false if obj[counter1] != obj[counter2]
    counter1 += 1
    counter2 -= 1
  end
  true
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([4, 5, 6]) == false
p palindrome?([4, 4, 5, 4, 4]) == true
