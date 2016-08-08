require 'open-uri'
require 'nokogiri'



def scraper(user_choice)
  html_file = open("https://www.etsy.com/search/clothing?q=#{user_choice}&order=most_relevant&view_type=gallery&ship_to=FR&ref=esearch_group0")
  html_doc = Nokogiri::HTML(html_file)

  items = []

  html_doc.search('.card-meta').each do |element|
    item_name = element.search('.card-title')[0].text.strip
    item_price = element.search('.currency')[0].text.to_f
    items << {name: item_name, price: item_price}
  end

  return items[0..9]
end
