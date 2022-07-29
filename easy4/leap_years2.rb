=begin
Input = An integer, year
Output = Boolean

Rules:
- Leap year after 1752:
- Year that is evenly divisible by 4 but not divisible by 100.
- Year that is evenly divisible by 100 and also divisible by 400.
- Input year is always greater than 0.
- Leap year before 1752:
- Any year that is evenly divisible by 4.
- Return true if the year is leap year, false otherwise.

Algorithm:
- For the years after 1752 (including 1752):
- Year % 4 == 0 has to be true, but not for year % 100.
- If year % 100 == 0 is true, year % 400 == 0 has to be true.
- In these 2 cases, return true else return false.
- For the years before 1752:
- Return true if year % 4 == 0, else false.
=end

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
