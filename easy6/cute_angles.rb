=begin
Input: An angle
Output: Degree, minutes, and seconds

Rules:
- Input number represents an angle between 0 and 360.
- Divide the number into degree, minutes, and seconds.
- A degree has 60 minutes, and a minute has 60 seconds.
- Use two digit numbers with leading zeros.

Algorithm:
- Set up constants.
- Convert degrees to seconds.
- Divide seconds by seconds per degree to get degrees.
- Divide remainder by seconds per minute to get minutes.
- The remainder is equal to seconds.
- format degrees, minutes, and seconds.
=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def normalize_degree(degree)
  degree % 360 if degree != (0..360)
end

def dms(degrees_float)
  degrees_float = normalize_degree(degrees_float)

  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
