def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'hello world'
p spin_me(str)
p str
puts str.object_id
puts spin_me(str).object_id

# It will return a different object since the string was passed to split method.
