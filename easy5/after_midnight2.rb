=begin
input: string of time of day in 24 hour format (hh:mm)
output: integer in minutes (0..1439)

rules:
- Do not use Date and Time classes
- Disregard Daylight Savings and Standard Time and other complications
- Write two methods (1)after_midnight and (2)before_midnight

Algorithm:
- Split hours and minutes by ":"
- Convert string to integer
- For after_midnight : calculate hours and minutes to minutes
- For before_midnight : minutes per day - after_midnight minutes
- How do we make "24:00" to 0?
=end

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0