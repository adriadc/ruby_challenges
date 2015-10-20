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



#DEPENDING ON THE WEATHER, YOU WILL SERVE THEM ONE OF THE FOLLOWING SCREENS:
#If it’s sunny: it’s 85 degrees and sunny!
#If it’s cloudy: 55 degrees and crazy cloudy!
#If it’s rainy: 60 degrees and crazy rainy!
#If it’s snowy: 32 degrees and super snowy!

# Returns a hash containing the actual weather condition details:
    #
    #  condition = response.condition
    #  condition['text'] => "Tornado"
    #  condition['code'] => 0
    #  condition['temp'] => 21
    #  condition['date'] => #<Date: -1/2,0,2299161>
    #

#from weather man Github page useage of weatherman app code - language - condition (temp, date, text)
    class Response

    attr_accessor :document_root

    def initialize(raw, language = nil)
      @document_root = Nokogiri::XML(raw).xpath('rss/channel')
      @i18n = Weatherman::I18N.new(language)
    end

    def condition
      condition = response.condition['text']
      condition = item_attribute('yweather:condition')
		translate! do_convertions(condition, [:code, :to_i], [:temp, :to_i], [:date, :to_date], :text)
      
    end
end
    

getweather = weather_info(zipcode)

case getweather
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

puts #{getweather}
  

