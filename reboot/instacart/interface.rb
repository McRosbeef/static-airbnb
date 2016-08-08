# implement a shopping cart
# you must be able to add any item to the
# items must have a price and quantity
# implement an stock for 3 items with quantity and unit price
# user can't get more thn remaining quantity


stock = {
  cherries: {
    quantity: 3,
    unit_price: 7
  },
  apples: {
    quantity: 1,
    unit_price: 7
  },
  coconuts: {
    quantity: 4,
    unit_price: 9
  }
}

shopping_cart = Hash.new
answer = nil

# def check_quantity(article)
#   if number > stock["cherries"][:quantity]
#     puts "Don't have enougth stock sorry"
#   elsif number > stock["apples"][:quantity]
#     puts "Don't have enougth stock sorry"
#   elsif number > stock["coconuts"][:quantity]
#     puts "Don't have enougth stock sorry"
#   else
#     return article
#   end
# end

until answer == "no"
puts "What do you want to buy ? (cherries, coconuts, apples"
article = gets.chomp
if stock.keys.include?(article.to_sym)
  puts "how many ?"
  number = gets.chomp.to_i
    if number <= stock[article.to_sym][:quantity]
      puts "what's the cost (unity) ?"
      cost = gets.chomp.to_i
     shopping_cart[article] = {
        quantity: number,
        price: stock[article.to_sym][:price]
      }
      stock[article.to_sym][:quantity] -=  number
  puts "Continu shopping ?"
  answer = gets.chomp
else
  puts "Try again, it remains only #{stock[article.to_sym][:quantity]} for #{article}"
end
end
end


shopping_cart.delete("")

puts "*" * 30
puts "Shopping list :"

total_price = 0
shopping_cart.each do |fruit, properties|
  subtotal = properties[:price] * properties[:quantity]
  puts "- #{properties[:quantity]} kg of #{fruit} : #{subtotal} € "
  total_price += subtotal
end

puts "Total_price price: #{total_price}€"

# puts "Something else?"
# article = gets.chomp

# puts "\n"

# puts shopping_cart





# def shopping_list(article)
#   if article != nil
#     return shopping_cart += article
#     puts "something else ?"
#   else
#     puts "Ok, now go to the shop"
# end

# shopping_list(sherry)

