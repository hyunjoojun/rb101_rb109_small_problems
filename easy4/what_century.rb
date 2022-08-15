=begin
Input = Year (Integer)
Output = Century (String)

Rules:
- The input number is an integer that represents a year.
- Return the century with number that ends with th, st, nd, or rd.
- New centuries begin in years that end with 01.
- Ex: 1901 - 2000 is 20th century.
-     2001 - 2100 is 21st century.

Algorithm:
- (year / 100) + 1 = century.
- If year % 10 == 0 then century = year / 100
- If century ends with 1, add st.
- If century ends with 2, add nd.
- If century ends with 3, add rd.
- If century ends with other numbers, add th.
- Add th if century ens with 11, 12, or 13.
=end

def century(year)
  if year % 10 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end
  century.to_s + add_ending(century)
end

def add_ending(century)
  str_century = century.to_s
  return 'th' if str_century.end_with?('11', '12', '13')

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
