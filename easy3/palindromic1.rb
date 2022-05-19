# def palindrome?(string)
#   string == string.reverse
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

p palindrome?([5, 3, 3, 5])
p palindrome?(["d", "a", "d"])
p palindrome?(["D", "a", "d"])
p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')
