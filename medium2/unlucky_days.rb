=begin
Input: year (integer)
Output: An integer

Rules:
- Return how many of Friday the 13ths occured in the input year.
- Assume that the year will be always greater than 1752.

Algorithm:
- months = (1..12)
- Time.local(year, month, 13).friday?
- Increment the count when we get true.
- Return the count.
=end

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    count += 1 if Time.local(year, month, 13).friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
