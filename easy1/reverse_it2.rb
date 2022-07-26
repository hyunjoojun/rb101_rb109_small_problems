def reverse_words(words)
  arr = []

  words.split.each do |word|
    word.reverse! if word.length >= 5
    arr << word
  end

  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
