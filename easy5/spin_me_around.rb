def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'hello world'
puts str.object_id # 47435609148580
puts spin_me(str).object_id # 47435609148360

# Once we call split method on str, we create different object, an array.
# As a result, we are creating a new string which has different object id.
# The each method and reverse! method will mutate the string object.
