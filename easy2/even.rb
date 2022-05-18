puts (1..99).select(&:even?)

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
