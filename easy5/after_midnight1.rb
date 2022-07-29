=begin
Input: An integer
Output: A string

Rules:
- Input integer represents number of minutes.
- If the number is positive, the time is after midnight.
- If the number is negative, the time is before midnight.
- Return the time of day in 24 hour format (hh:mm).
- Do not use Date or Time classes.

Algorithm:
- one day is 1440 minutes
- (minutes % 1440).divmod(60) will give an array with hour and min
- convert the array to string in 24 hour format
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
