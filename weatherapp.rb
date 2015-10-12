#user tells you where they are with zip code/postal code
puts "Where are you? Enter your zipcode:"
zipcode = gets.chomp

#use the Yahoo Weather API Gem
require 'rubygems'
require 'yahoo-weather'

@client = YahooWeather::Client.new

url = "https://weather.yahoo.com"

location = zipcode

# look up location via http://weather.yahoo.com; enter location by zip code


def forecasts (zipcode)
	
response = @client.lookup_location(location, units='f')
 
end
#DEPENDING ON THE WEATHER, YOU WILL SERVE THEM ONE OF THE FOLLOWING SCREENS:
#If it’s sunny: it’s 85 degrees and sunny!
#If it’s cloudy: 55 degrees and crazy cloudy!
#If it’s rainy: 60 degrees and crazy rainy!
#If it’s snowy: 32 degrees and super snowy!

weather = forecasts
case weather
	when 'sunny'
		puts "it’s 85 degrees and sunny!"
	when 'cloudy'
		puts "55 degrees and crazy cloudy!"
	when 'rainy'
		puts "60 degrees and crazy rainy!"
	when 'snowy'
		puts "32 degrees and super snowy!"
	else
		puts "I am not sure! Look outside!"
	end

  