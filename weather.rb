require "barometer"
puts "Please enter your location by providing your zipcode or location name (ie address, city, state, landmark, etc.)"

def get_location (location)
Barometer.new(location).measure </span>
end

weather =  get_locations_weather(location)

weather.forecast.each do |forecast|
puts forecast.starts_at.month.to_s + "/ " +forecast.starts_at.day.to_s + "is going to be" + forecast.icon +"with a low of"+forecast.low.c.to_s
  +"and a high of "+forecast.high.c.to_s
end
