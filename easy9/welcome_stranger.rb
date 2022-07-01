=begin
input: array and hash
output: string, a greeting message

rules:
- The array has person's name.
- When the array is combined with adjoining spaces, it produces person's full name.
- The array will always have 2 or more elements.
- The hash has person's title and occupation.
- The hash will always have 2 keys and 2 values.
- Return a greeting message that contains the person's full name,
and also person's title and occupation.

Algorithm:
- Combine the array's elements to get the full-name.
- Combine the hash's values to get the title.
- Use string interpolation to return greeting message.
=end

def greetings(name, status)
  full_name = name.join(' ')
  job = status.values.join(' ')

  "Hello, #{full_name}! Nice to have a #{job} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
