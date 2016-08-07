
require 'barometer'
puts "Please enter your location by providing your zipcode or location name (ie address, city, state, landmark, etc.)"
location = gets

def get_locations_weather(location)
  Barometer.new(location).measure
end

weather = get_locations_weather(location)
tomorrow = Time.now.strftime('%d').to_i + 1

weather.forecast.each do |forecast|
  day = forecast.starts_at.day

  if day == tomorrow
    dayName = 'Tomorrow'
  else
    dayName = forecast.starts_at.strftime('%A')
  end

  puts dayName + ' is going to be' + forecast.icon + ' with a low of' + forecast.low.c.to_s + ' and a high of ' + forecast.high.c.to_s
end
