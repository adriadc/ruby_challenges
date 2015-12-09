require 'Nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

search = doc.css('li')


list = doc.css('.components-item')

list.each do |n|

puts n.inner_html

end