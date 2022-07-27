=begin
Input = User's name
Output = Greeting

Rules
- Ask user's name.
- The program outputs a greeting message.
- If the user writes "!" at the end of the name, computer yells back to the user.

Algorithm:
- Set a variable name for user's name.
- If the name has "!" at the end, output all caps greeting.
- Else, output regular greeting message.
=end

puts "What is your name?"
name = gets.chomp!

if name[-1] == '!'
  puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
