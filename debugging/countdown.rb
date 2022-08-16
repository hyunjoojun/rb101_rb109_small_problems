# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'

# The method named decrease creates its own scope, so it doesn't have access to
# the counter variable on line 5. This means the decrease method cannot reassign
# the value of local variable named counter.
# We can reassign the counter within the loop of times method.

# def decrease(counter)
#   counter - 1
# end

# counter = 10

# counter.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

10.downto(1) do |counter|
  puts counter
end

puts 'LAUNCH!'
