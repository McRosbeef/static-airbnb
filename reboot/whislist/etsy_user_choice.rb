require 'open-uri'
require 'nokogiri'


html_file = open("https://www.etsy.com/search/clothing?q=#{user_choice}&order=most_relevant&view_type=gallery&ship_to=FR&ref=esearch_group0")
html_doc = Nokogiri::HTML(html_file)

items = []

def  display_etsy_items(user_choice)
html_doc.search('.card-meta').each do |element|
  item_name = element.search('.card-title')[0].text.strip
  item_price = element.search('.currency')[0].text.to_f
 items << {name: item_name, price: item_price}
puts items
end
end


