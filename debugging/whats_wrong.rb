arr = ["9", "8", "7", "10", "11"]
p (
  arr.sort do |x, y|
    y.to_i <=> x.to_i
  end
)
