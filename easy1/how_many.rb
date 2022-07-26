vehicles = [
  'car', 'car', 'truck', 'CAR', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(words)
  count_hash = Hash.new { |h, k| h[k] = 0 }

  words.each do |word|
    count_hash[word.downcase] += 1
  end

  count_hash.each do |word, count|
    puts "#{word} => #{count}"
  end
end

p count_occurrences(vehicles)
p vehicles