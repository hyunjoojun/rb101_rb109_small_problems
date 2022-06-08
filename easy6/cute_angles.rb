=begin
input: floating point number between 0 and 360
output: string that represents angle in degrees, minutes, and seconds.

rules:
- Use a degree symbol to represent degrees.
- Use a single quote to represent minutes.
- Use a double quote to represent seconds.
- A degree has 60 minutes.
- A minute has 60 seconds.
- Use two digit numbers with leading zeros for minutes and seconds.

Algorithm:
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

def degrees_0_to_360(degrees)
  degrees % 360
end

def dms(degrees_float)
  total_seconds = (degrees_0_to_360(degrees_float) * SECONDS_PER_DEGREE).round
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