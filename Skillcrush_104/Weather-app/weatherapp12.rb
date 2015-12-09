require 'rubygems'
require 'yahoo_weatherman'

#user tells you where they are with zip code/postal code
puts "Where are you? Enter your zipcode:"
zipcode = gets.to_s.chomp

# look up location via http://weather.yahoo.com; enter location by zip code

def weather_info(zipcode)
client = Weatherman::Client.new
#this is our response 
weather = client.lookup_by_location(zipcode)
end

#DEPENDING ON THE WEATHER, YOU WILL SERVE THEM ONE OF THE FOLLOWING SCREENS:
#If it's sunny: it's 85 degrees and sunny!
#If it's cloudy: 55 degrees and crazy cloudy!
#If it's rainy: 60 degrees and crazy rainy!
#If it's snowy: 32 degrees and super snowy!

# added in a parameter response and need defined it.
def condition(response)
condition = response.condition['text']
end

#call up our condition method in order to get our condition text (never thought to reference weather_info and zipcode)

getweather = condition(weather_info(zipcode))

#use the result of our case statement, we want to make it into a function and then return instead of puts
#Still figuring out the downcase 

def get_weather(getweather)
case getweather.downcase
when 'sunny'
return "it's 85 degrees and sunny!"
when 'cloudy'
return "55 degrees and crazy cloudy!"
when 'rainy'
return "60 degrees and crazy rainy!"
when 'snowy'
return "32 degrees and super snowy!"
else
return "I am not sure! Look outside!"
end
end

#what we want to do is put the string of the result of our get_weather function from get weather the case
puts "#{get_weather(getweather)}"
