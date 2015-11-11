#use the Yahoo Weather API Gem
require 'rubygems'
require 'yahoo_weatherman'

#user tells you where they are with zip code/postal code
puts "Where are you? Enter your zipcode:"
zipcode = gets.to_s.chomp
 
# look up location via http://weather.yahoo.com; enter location by zip code

def weather_info(zipcode)
	client = Weatherman::Client.new
weather = client.lookup_by_location(zipcode)

end

#First let’s get today as a number e.g. 0 for Sunday, 6 for Saturday.
#Let’s make an if/else statement to compare if today is equal to the day of the week it is currently, 
#and also compare tomorrow’s day. If it is none of the above then you will just want to show the name of the weekday.

weather = weather_info(zipcode)
date = Time.now.strftime('%w').to_i
 

def forecasts
    convertions = [[:date, :to_date], [:low, :to_i], [:high, :to_i], [:code, :to_i], :day, :text]
    item_attribute('yweather:forecast').collect do |forecast|
     translate! do_convertions(forecast, *convertions)
           forecast = response.forecasts.first['text','day', 'date', 'low', 'high']
      end
    end

weather.forecasts.each do |forecast|
   day = forecast (date) 
   dayofweek = day.strftime('%w').to_i

  if dayofweek == today
  day_name = 'Today'
  elsif dayofweek == today + 1
  day_name 'Tomorrow'
  else day_name = day.strftime('%A')
  end
puts day_name + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s

end
#Now you will want to take the date in your loop, and find out what integer those weekdays would be.
#puts day_name['day'].to_s + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s



#Insert this into your string and return something along the lines of:
#“Tomorrow’s forecast is [x]”
#“Today’s forecast is [y]”
#“[dayofweek] forecast is [a]”
#“[dayofweek] forecast is [b]”
#“[dayofweek] forecast is [c]”
    
 
#end












