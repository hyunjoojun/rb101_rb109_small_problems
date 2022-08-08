=begin
Input: An integer
Output: A string

Rules:
- The input number is minutes.
- Conver minutes to the 24-hour time format (hh:mm)
- If the number is positive, the time is after midnight.
- If the number is negative, the time is before midnight.
- Do not use ruby's Date and Time classes.
- Disregard Daylight Savings and Standard Time and other complications.

Algorithm:
- MINS_PER_HOUR = 60
- HOURS_PER_DAY = 24
- MINS_PER_DAY = 1440
- hour = minutes % MINS_PER_DAY / MINS_PER_HOUR
- remaining_minutes =  minutes - hour * MIN_PER_HOUR
=end

MINS_PER_HOUR = 60
HOURS_PER_DAY = 24
MINS_PER_DAY = MINS_PER_HOUR * HOURS_PER_DAY

def normalize_minutes(minutes)
  minutes % MINS_PER_DAY
end

def time_of_day(delta_min)
  delta_min = normalize_minutes(delta_min)
  hour = delta_min % MINS_PER_DAY / MINS_PER_HOUR
  min = delta_min - (hour * MINS_PER_HOUR)

  format('%02d:%02d', hour, min)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
