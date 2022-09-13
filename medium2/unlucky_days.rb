=begin
Input: year (integer)
Output: An integer

Rules:
- Return number of Friday the 13ths that occured in the input year.
- The input year will be always greater than 1752.

Algorithm:
- months = (1..12)
- boolean array = Time.local(year, month, 13).friday?
- Count how many trues are in the array.
=end

def friday_13th(year)
  months = (1..12)

  friday_13th = months.map do |month|
    Time.local(year, month, 13).friday?
  end

  friday_13th.count(true)
end

# def friday_13th(year)
#   count = 0
#   (1..12).each do |month|
#     count += 1 if Time.local(year, month, 13).friday?
#   end
#   count
# end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
