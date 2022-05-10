def reverse_words(words)
  word = words.split

  words.split.each do |word|
    word.reverse! if word.length > 4
  end

  word.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
