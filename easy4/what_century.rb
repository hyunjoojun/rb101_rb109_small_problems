=begin
Input = Year (Integer)
Output = Century (String)

Rules:
- Return value is string that begins with the century number.
- Return value ends with 'st', 'nd', 'rd', or 'th'.
- New centuries begin in years that end with 01.
- 1901 to 2000 is the 20th century.

Algorithm:
- (year / 100) + 1 = century
- if year % 100 == 0, year / 100 = century.
- Add 'st' if century ends with 1.
- Add 'nd' if century ends with 2.
- Add 'rd' if century ends with 3.
- Add 'th' if century ends with 11.
- Add 'th' if century ends with 12.
- Add 'th' if century ends with 13.
- All others add 'th'.
=end

def century(year)
  century = (year / 100) + 1
  century -= 1 if year % 100 == 0
  century.to_s + ending(century)
end

def ending(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
