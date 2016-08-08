require_relative 'wishlist'
require_relative 'etsy_scraper'
require 'open-uri'
require 'nokogiri'

# ask user for an item
# ask user the price
# ask user if he bougth it already
# implement an array with hash
# ask user what he want to do : tick if checked, delete something, change the price

wish_list = [
  {name: "jean", price: 50, checked: false},
  {name: "t-shirt", price: 25, checked: true}
]
answer = nil
choice = nil


# MENU

list_answer = nil.to_i

until list_answer > 5
  puts "\n"
  puts "\n"
  puts "\n"
  puts "What do you want to do ?"
  puts "\n"
  puts " Press number"
  puts "1 - Show list"
  puts "2 - Add idem"
  puts "3 - Remove idem"
  puts "4 - Mark idem as bought"
  puts "5 - Scrap something from Etsy"
  puts "6 - Exit"
  list_answer = gets.chomp.to_i

  case list_answer

    when 1
      puts "\n"
      puts "------------------- IN YOUR WISH LIST ---------------------"

      display_wishlist(wish_list)

    when 2
      puts "what do you have in mind ?"
      name = gets.chomp
      puts "what is the price of that ?"
      price = gets.chomp.to_i
      new_item = { name: name, price: price, checked: false }
      wish_list << new_item

    when 3
      puts "\n"
      puts "------------------- IN YOUR WISH LIST ---------------------"

      display_wishlist(wish_list)

      puts "Which one do you want to tick ? Press number"

      remove_item = gets.chomp.to_i - 1
      wish_list.delete_at(remove_item)

      display_wishlist(wish_list)
      puts "\n"

    when 4
      puts "\n"
      puts "------------------- IN YOUR WISH LIST ---------------------"

      display_wishlist(wish_list)

      puts "Which one do you want to tick ? Press number"
      mark_item = gets.chomp.to_i - 1
      wish_list[mark_item][:checked] = true

      display_wishlist(wish_list)

    when 5
      puts "\n"
      puts "What do you want from Etsy ?"
      user_choice = gets.chomp
      items = scraper(user_choice)
      display_wishlist(items)

      puts "Which one do you want to add ? Press number"

      add_item = gets.chomp.to_i - 1
      item_chosen = items[add_item]
      item_chosen[:checked] = false
      wish_list << item_chosen

      display_wishlist(wish_list)
      puts "\n"

     else
      list_answer = 6
      end
  end




# until answer == "no"
#   puts "Do you want to add something to your wish list ? (yes or no)"
#   choice = gets.chomp
#    if choice
#     puts "what do you have in mind ?"
#     name = gets.chomp
#       new_item[:name] = name
#     puts "what is the price of that ?"
#     price = gets.chomp.to_i
#       new_item[:price] = price
#     puts "Have you already bought it ?"
#     checked = gets.chomp
#       new_item[:checked] = checked
#     puts "Continu shopping ?"
#     answer = gets.chomp
#   else
#     puts "Ok, now go to the shop"
#   "Ok see you another time"
#   end
# end


