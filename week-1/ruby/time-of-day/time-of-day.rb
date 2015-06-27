require 'date'

def time_of_day(hour)
  if hour >= 0 && hour < 6
    "Night"
  elsif hour >= 6 && hour < 12
    "Morning"
  elsif hour >= 12 && hour < 18
    "Afternoon"
  else
    "Evening"
  end
end

puts time_of_day(DateTime.now.hour)
