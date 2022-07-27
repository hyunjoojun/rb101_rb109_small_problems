=begin
Output = print odd numbers

Rules
- 1 to 99 inclusive, print out odd numbers on a separate line.

Algorithm:
- puts (1..99) only odd numbers
=end

puts (1..99).select(&:odd?)

1.upto(99) { |num| puts num if num.odd? }

(1..99).each { |num| puts num if num.odd? }
