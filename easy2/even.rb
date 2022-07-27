=begin
Output = print even numbers

Rules
- 1 to 99 inclusive, print out even numbers on a separate line.

Algorithm:
- puts (1..99) only even numbers
=end

puts (1..99).select(&:even?)

1.upto(99) { |num| puts num if num.even? }

(1..99).each { |num| puts num if num % 2 == 0 }
