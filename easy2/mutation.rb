array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
Line 5 outputs Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, and Zeppo.
These elements are the same as array1 because on line 3, each method pushes references
of elements from array1 to array2. Both arrays contain the same string objects
so when we mutate the strings by upcase! method on line 4, all strings get mutated.
But array1 and array2 are two different arrays, just their elements refer to the
same strings.
=end
