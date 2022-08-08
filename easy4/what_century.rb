=begin
Input = Year (Integer)
Output = Century (String)

Rules:
- Return the century when a year is given.
- The centruy begins with the number and ends with st, nd, rd, or th.
- 1901-2000 is the 20th century.
- 2001-2100 is the 21st century.

Algorithm:
- (year / 100) + 1 gives the century number.
- If year % 10 == 0, year / 100 is the century.
- When century ends with 1, add st.
- When century ends with 2, add nd.
- When century ends with 3, add rd.
- When century ends with 11, 12, or 13 add th.
- All other numbers, add th.
=end

def centruy_ending(centruy)
  return 'th' if centruy.to_s.end_with?('11', '12', '13')

  last_digit = centruy.to_s[-1]
  case last_digit
  when '1' then 'st'
  when '2' then 'nd'
  when '3' then 'rd'
  else 'th'
  end
end

def century(year)
  century = (year / 100) + 1
  century -= 1 if year % 100 == 0
  century.to_s + centruy_ending(century)
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
