=begin
Input: An integer
Output: An array

Rules:
- The input integer represents number of light switches.
- The switches are numbered 1 to n.
- n also represents the number of rounds that I need to toggle switches.
- If n = 5
  - Round 1 : Every light is on.
  - Round 2 : Toggle 2, 4 => 1, 3, 5 are on.
  - Round 3 : Toggle 3 => 1, 5 are on.
  - Round 4 : Toggle 4 => 1, 4, 5 are on.
  - Round 5 : Toggle 5 => 1, 4 are on.
- Return an array where the elements are on switches. [1, 4]
- If n = 10, return [1, 4, 9]

Algorithm:
- Create an array with n number of elements.
- On / Off can be created as True / False.
- if n = 5, [false, false, false, false, false] meaning lights are off.
- When I toggle the switch false becomes true.
- [true, false, false, true, false], return index + 1 of trues as an array.
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
