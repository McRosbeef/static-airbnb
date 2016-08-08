require 'open-uri'
require 'nokogiri'
require 'json'

puts "What kind of movie do you want ?"
choice = gets.chomp

base_url = "http://www.allocine.fr"

html_file = open(base_url + "/recherche/?q=#{choice}")
html_doc = Nokogiri::HTML(html_file)
movie_link = []

html_doc.search('.totalwidth td.totalwidth a').each do |element|
  # puts element.text
  movie_link << element.attribute('href')
end

movies = []

movie_link[0..4].each do |element|
  movie = {}
  movie[:url] = base_url + element
  html_file = open(movie[:url])
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search('.titlebar-title-lg').each do |title|
    movie[:title] = title.text.strip

  end
  puts html_doc.search('.xXx.blue-link')
  movies << movie
end

puts movies



File.open("list_movie_movies.json", 'w') do |file|
  file.write(JSON.generate(movies))
end

