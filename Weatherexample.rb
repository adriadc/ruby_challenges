Weather example

def get_forecast(location)

  weather = client.lookup_by_location(get_location)
  date = Time.now.strftime('%w')

  day = 0
  weather.forecasts.each do |forecast|
  if day == 0
  day_name = 'Today'
  elsif day == 1
  day_name 'Tomorrow'
  else day_name = forecast['day']
  end

  puts "Please enter your zip code for the weather in your area."
  def get_location
  location = gets.chomp
  end
-------------------------------------------------
def get_forecast(location)
  client = Weatherman::Client.new
  weather = client.lookup_by_location(get_location)
  date = Time.now.strftime('%w')

  day = 0
  weather.forecasts.each do |forecast|
  if day == 0
  day_name = 'Today'
  elsif day == 1
  day_name 'Tomorrow'
  else day_name = forecast['day']
  end
day += 1

puts forecast['day_name'].to_s + 'is going to be ' + forecast['text'].downcase + 'with a low of ' +
forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s

end

  end


  get_forecast(get_location)