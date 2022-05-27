=begin
input: any integers (neg, pos, or 0)
output: string of time of day in 24 hour format (hh:mm)

rules:
- If the number of minutes is pos, time is after midnight
- If the number of minutes is neg, time is before midnight
- Do not use Date and Time classes
- Disregard Daylight Savings and Standard Time and other complications

Algorithm:
- one day is 1440 minutes
- (minutes % 1440).divmod(60) will give an array with hour and min
- convert the array to string in 24 hour format
=end

# MIN_PER_DAY = 1440
# MIN_PER_HOUR = 60

# def time_of_day(minutes)
#   hours, mins = (minutes % MIN_PER_DAY).divmod(MIN_PER_HOUR)
#   format("%02d:%02d", hours, mins)
# end

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

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)