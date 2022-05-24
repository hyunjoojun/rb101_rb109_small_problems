=begin
input: year (integer)
output: century (string)

rules: - Return century in string.
       - Century is an integer and ends with st, nd, rd, or th
       - New century begin in years end with 01

Algorithm:
- Century = year / 100 + 1
- When year / 100 has no remainder, century = year / 100
- When the century ends with 1, we add 'st'
- When the century ends with 2, we add 'nd'
- When the century ends with 3, we add 'rd'
- Exceptions: ends with 11, 12 or 13 we add 'th'
- All other numbers we add 'th'
=end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
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