# Sherlock has to find suspects on his latest case. He will use your method, dear Watson.
# Suspect in this case is a person which has something not allowed in his/her pockets.
# Allowed items are defined by array of numbers.
# Pockets contents are defined by map entries where key is a person and value is one or few
# things represented by an array of numbers (can be nil or empty array if empty), example:
# pockets = {
  # bob: [1],
  # tom: [2, 5],
  # jane: [7]
# }
# find_suspects(pockets, [1, 2]) # => [:tom, :jane]
# find_suspects(pockets, [1, 7, 5, 2]) # => nil
# find_suspects(pockets, []) # => [:bob, :tom, :jane]
# find_suspects(pockets, [7]) # => [:bob, :tom]
# Write method which helps Sherlock to find suspects. If no suspect is found or there are
# no pockets (pockets == nil), the method should return nil.

# Input: hash, an Array
# Output: An array of keys(symbols).

# Rules:
# The given hash contains keys that reperesent people and the values are arrays of numbers.
# The values represent allowed items in numbers.
# Return An array of people who has items that's not allowed.
# If the person has other than allowed items, that person should be included in the array.
# If there is no one, return nil.

def find_suspects(pockets, allowed_items)
  suspects = []
  pockets.select do |person, items|
    next if items.nil?

    suspects << person unless items.all? { |item| allowed_items.include?(item) }
  end
  suspects.empty? ? nil : suspects
end

pockets = {
  bob: [1],
  tom: [2, 5],
  jane: [7]
 }
p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
