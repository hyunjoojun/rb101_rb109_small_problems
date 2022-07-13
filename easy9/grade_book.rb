=begin
Input: Three integers
Output: A letter

Rules:
- Input integers are always between 0 and 100.
- Input integers represent scores.
- Return value is a letter grade that depends on the average of three scores.
- 'A' is between 90 and 100.
- 'B' is between 80 and 89.
- 'C' is between 70 and 79.
- 'D' is between 60 and 69.
- 'F' is between 0 and 59.

Algorithm:
- Calculate the sum of three input numbers.
- Calculate the average score from the sum by dividing 3.
- Write a case statement to check
  which letter grade is appropriate for the average score.
- Return the letter in string.
=end

def get_grade(s1, s2, s3)
  sum = s1 + s2 + s3
  average = sum / 3

  case average
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else             'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
