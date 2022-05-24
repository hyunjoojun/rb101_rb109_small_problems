=begin
input: year greater than 0
output: boolean

rules:
- Return true if input year is leap year, else false.
- Leap year true (After 1752):
  if evenly divisible by 4, but not by 100
  if evenly divisible by 4, 100 and also 400
- Leap year true (Before 1752):
  year evenly divisible by 4

Algorithm:
- Leap year after 1752 true if year % 400 == 0
- Leap year after 1752 true if year % 4 == 0 && year % 100 != 0
- Leap year before 1752 true only if year % 4 == 0
- All others return false
=end

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 != 0
    true
  else
    false
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