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


    class Response

    attr_accessor :document_root

    def initialize(raw, language = nil)
      @document_root = Nokogiri::XML(raw).xpath('rss/channel')
      @i18n = Weatherman::I18N.new(language)
    end

    def condition
      condition = item_attribute('yweather:condition')
		translate! do_convertions(condition, [:code, :to_i], [:temp, :to_i], [:date, :to_date], :text)
      condition = response.condition['text', 'temp', 'date']
    end
end
    

getweather = weather_info(zipcode)

#
    # Forecasts for the next 2 days.
    #
    #  forecast = response.forecasts.first
    #  forecast['low'] => 20
    #  forecast['high'] => 31
    #  forecast['text'] => "Tornado"
    #  forecast['code'] => 0
    #  forecast['day'] => "Sat"
    #
    def forecasts
      convertions = [[:date, :to_date], [:low, :to_i], [:high, :to_i], [:code, :to_i], :day, :text]
      item_attribute('yweather:forecast').collect do |forecast|
        translate! do_convertions(forecast, *convertions)
       forecast = response.forecasts.first['text','day', 'date', 'low', 'high']
      end
    end




  

  
  

# straight text output
print <<forecast


