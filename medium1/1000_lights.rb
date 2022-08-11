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

def toggle_lights(n)
  switches = Array.new(n) { false }
  on_switches = []

  1.upto(n) do |iteration|
    0.upto(switches.length - 1) do |i|
      if ((i + 1) % iteration).zero?
        switches[i] = !switches[i]
      end
    end
  end

  switches.each_with_index do |switch, idx|
    on_switches << (idx + 1) if switch
  end
  on_switches
end

p toggle_lights(5)
p toggle_lights(10)
p toggle_lights(1000)
