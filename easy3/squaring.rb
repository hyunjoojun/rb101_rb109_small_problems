def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, n)
  multiply(num, 1) ** n
end

p power_to_the_n(2, 0)
