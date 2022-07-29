=begin
Input: A string
Output: An integer

Rules:
- Input string represents time of day in 24 hour format.
- Write two methods after_midnight and before_midnight.
- Methods return number of minutes in the range 0..1439.
- Do not use Date and Time methods.

Algorithm:
- 1440 minutes is minutes per day.
- For after_midnight:
- Divide hours and minutes which is divided by ':'.
- Convert hours in minutes and add minutes to get total minutes.
- For before_midnight:
- 1440 - after_midnight minutes = before_midnight minutes.
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hour, min = time.split(':').map(&:to_i)
  return 0 if hour == 0 || hour == HOURS_PER_DAY
  hour_to_min = hour * MINUTES_PER_HOUR
  hour_to_min + min
end

def before_midnight(time)
  hour, min = time.split(':').map(&:to_i)

  return 0 if hour == 0 || hour == HOURS_PER_DAY
  MINUTES_PER_DAY - after_midnight(time)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
