=begin
Input: Three scores
Output: A letter grade of average score

Rules:
- Input numbers are the scores.
- Return a letter grade of the average of three scores.
- 90 to 100 is 'A'
- 80 to 89 is 'B'
- 70 to 79 is 'C'
- 60 to 69 is 'D'
- 0 to 59 is 'F'
- Score will be always in between 0 and 100.

Algorithm:
- Add all the scores and divide it by 3 to get the average.
- Return the letter according to the average score.
=end

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3

  case average
  when 101..   then 'A+'
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(101, 102, 103) == "A+"
