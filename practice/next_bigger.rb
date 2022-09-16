=begin
You have to create a method that takes a positive integer number and returns the
next bigger number formed by the same digits.

examples:
12 --> 21
513 --> 531
2017 --> 2071

If no bigger number can be formed using these digits, return -1.
examples:
9 --> -1
111 --> -1
531 --> -1

Input: An integer
Output: Next bigger integer or -1

Rules:
- Create a new integer with digits that are in the input number.
- The new integer must be the next bigger number of the input integer.
- If there is no possible bigger number, return -1.

Algorithm:
- num.digits.sort.reverse.join.to_i is the biggest number we can get.
- If the input number equals to the biggest number, return -1.
- Since we have the max number, we can check numbers from
  input number + 1 through max number.
- Go through the numbers in sequence and return the number when the digits
  equals to the input number's digits.
=end

def next_bigger(num)
  max_num = max_num(num)
  return -1 if num == max_num

  (num + 1).upto(max_num) do |number|
    return number if number.digits.sort == num.digits.sort
  end
end

def max_num(num)
  num.digits.sort.reverse.join.to_i
end

p next_bigger(9) == -1
p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(111) == -1
p next_bigger(531) == -1
p next_bigger(123456789) == 123456798
