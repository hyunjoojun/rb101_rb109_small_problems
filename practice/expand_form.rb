# You will be given a number and you will need to return it as a string in expanded form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
#
# Note: All numbers will be whole numbers greater than 0.

def expanded_form(num)
  divisor = 10
  length = num.digits.length
  final_numbers = []

  loop do
    if num % divisor == 0
      divisor *= 10
    else
      final_numbers << num % divisor
      num -= num % divisor
    end
    break if length == final_numbers.last.digits.length
  end
  num_arr = final_numbers.reverse
  arr_to_str(num_arr)
end

def arr_to_str(array)
  string = ''

  0.upto(array.length - 1) do |idx|
    string << array[idx].to_s
    string << ' + ' if idx < array.length - 1
  end
  string
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
