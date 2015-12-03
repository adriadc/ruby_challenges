#use the Yahoo Weather API Gem
require 'rubygems'
require 'yahoo_weatherman'


#user tells you where they are with zip code/postal code
puts "Where are you? Enter your zipcode:"
zipcode = gets.to_s.chomp
 
# look up location via http://weather.yahoo.com; enter location by zip code

def weather_info(zipcode)

	client = Weatherman::Client.new(unit: 'f')
  weather = client.lookup_by_location(zipcode)
end

#First let’s get today as a number e.g. 0 for Sunday, 6 for Saturday.
#Let’s make an if/else statement to compare if today is equal to the day of the week it is currently, 
#and also compare tomorrow’s day. If it is none of the above then you will just want to show the name of the weekday.

def forecasts
  convertions = [[:date, :to_date], [:low, :to_i], [:high, :to_i], [:code, :to_i], :day, :text]

  item_attribute('yweather:forecast').collect do |forecast|
    translate! do_convertions(forecast, *convertions)
    forecast = response.forecasts.first['text','day', 'date', 'low', 'high']
  end
end
#adding units for farhnheit Not working yet




weather = weather_info(zipcode)
 #loop so that I can get weather for each day

    weather.forecasts.each do |forecast|
      puts forecast['day'].to_s + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s
    end
 
    










