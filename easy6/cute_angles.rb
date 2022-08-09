=begin
Input: An angle
Output: Degree, minutes, and seconds

Rules:
- The input number is between 0 and 360 degrees.
- Write the number in degree, minutes, and seconds.
- A degree has 60 minutes and a minute has 60 seconds.
- Multiply the remainder by 60 to get minutes and seconds.

Algorithm:
- degree = angle.to_i
- minutes = ((angle - degree) * 60).to_i
- seconds = (((angle - degree) * 60) - minutes).to_i
=end

DEGREE = "\xC2\xB0"

def dms(angle)
  angle = angle % 360
  degree = angle.to_i
  minutes = ((angle - degree) * 60).to_i
  seconds = (((angle - degree) * 60) - minutes) * 60

  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)
p dms(400)
p dms(-40)
p dms(-420)
