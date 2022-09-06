=begin
Input = An integer, year
Output = Boolean

Rules:
- Leap year:
- Year that is evenly divisible by 4 but not divisible by 100.
- Year that is evenly divisible by 100 and also divisible by 400.
- Input year is always greater than 0.
- Return true if the year is leap year, false otherwise.

Algorithm:
- Year % 4 == 0 has to be true, but not for year % 100.
- If year % 100 == 0 is true, year % 400 == 0 has to be true.
- In these 2 cases, return true else return false.
=end

def leap_year?(year)
  case1 = year % 4 == 0 && year % 100 != 0
  case2 = year % 400 == 0
  case1 || case2
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# def leap_year?(year)
#   year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
# end
