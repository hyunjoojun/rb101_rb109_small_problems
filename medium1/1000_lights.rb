=begin
Input: An integer
Output: An array

Rules:
- There is a bank of switches which are numbered 1 to n.
- Round 1, all the lights are off.
- Round 2, toggle 2, 4, 6 and so on.
- Round 3, toggle 3, 6, 9 and so on.
- Repeat until you reach round n.
- Return an array with the numbers of lights that are on.

Algorithm:
- Create an array with n elements that are false which means off, true means on.
- Repeat rounds for n number of times.
- Each round toggle switch number that are divisible by round number.
  - Round 1 : numbers that are divisible by 1 which are 1, 2, 3 and so on.
  - Round 2 : numbers that are divisible by 2 which are 2, 4, 6 and so on.
  - Round 3 : numbers that are divisible by 3 which are 3, 6, 9 and so on.
- When we get an array of booleans, get the light numbers that are on.
   = values that are true.
- Return a new array that contains switch numbers that are on.
=end

def on_lights(number_of_lights)
  lights = Array.new(number_of_lights)

  number_of_lights.times do |round|
    lights.map!.with_index do |boolean, idx|
      (idx + 1) % (round + 1) == 0 ? !boolean : boolean
    end
  end
  boolean_to_numbers(lights)
end

def boolean_to_numbers(array)
  numbers = []
  array.each.with_index do |boolean, idx|
    numbers << idx + 1 if boolean
  end
  numbers
end

p on_lights(5)
p on_lights(10)
p on_lights(1000)

# def toggle_lights(number_of_lights)
#   switches = Array.new(number_of_lights) { false }

#   1.upto(number_of_lights) do |round|
#     0.upto(number_of_lights - 1) do |idx|
#       switches[idx] = !switches[idx] if (idx + 1) % round == 0
#     end
#   end

#   boolean_to_numbers(switches)
# end
