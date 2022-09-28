=begin
Input: An integer
Output: An array

Rules:
- The argument represents number of switches and also number of rounds.
- For each round, we toggle lights which makes the lights on or off.
- Example if n = 5.
- Round 1: toggle all of them so all the lights are on.
- Round 2: toggle 2, 4 so 1, 3, 5 are on.
- Round 3: toggle 3, so 1, 5 are on.
- Round 4: toggle 4 so 1, 4, 5 are on.
- Round 5: toggle 5 so 1, 4 are on.
- Return the lights that are on as an array => [1, 4]

Algorithm:
- A method to keep track of lights are on or off.
- A method for toggling switches.
- Create an array with n number of elements.
- On / Off can be created as True / False.
- if n = 5, [false, false, false, false, false] meaning lights are off.
- When I toggle the switch false becomes true.
- [true, false, false, true, false], return index + 1 of trues as an array.
=end

def toggle_switches(n)
  switches = Array.new(n) { false }

  1.upto(n) do |round|
    1.upto(switches.length) do |index|
      switches[index - 1] = !switches[index - 1] if index % round == 0
    end
  end
  on_switches(switches)
end

def on_switches(array)
  numbers = []
  array.each.with_index do |switch, idx|
    numbers << idx + 1 if switch
  end
  numbers
end

p toggle_switches(5)
p toggle_switches(10)
