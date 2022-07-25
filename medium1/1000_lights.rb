=begin
Input: An integer
Output: An array

Rules:
- The input is number of lights and light switches.
- The input number is also number of rounds that we will toggle switches.
- Round 1 we toggle all the light swiches, all lights are on.
- Round 2, we toggle multiples of 2.
- Round 3, we toggle multiples of 3.
- Round 4, we toggle multiples of 4 and so on.
- Method should return an array with numbered lights that are on.

Algorithm:
- Create a hash to tell if the light is on or off.
  - Number of light will be the key.
  - On or off will be the value.
- We repeat rounds for n, input number repetitions.
- If the state is off, switch to on, if it's on switch to off.
- Return an array if the value of hash is on.
=end

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)