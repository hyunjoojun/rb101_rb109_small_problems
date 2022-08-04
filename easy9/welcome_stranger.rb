=begin
Input: An array and a hash
Output: A Greeting message

Rules:
- The array contains 2 or more elements of a person's name.
- When we combine the elements of the array, we will have the full name.
- The hash contains 2 keys, :title and :occupation with 2 values.
- Return a greeting message with person's full name, title, and occupation.

Algorithm:
- Set a variable for full name:
- Join the elements of the array with a space in between.
- Set a variable for occupation:
- hash[:title] and hash[occupation:]
- Print a message with name and occupation.
=end

def greetings(names, job)
  full_name = names.join(' ')
  job_title = job.values.join(' ')

  puts "Hello, #{full_name}! Nice to have a #{job_title} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
