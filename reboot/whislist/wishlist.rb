
def display_wishlist(wish_list)
wish_list.each_with_index do |item, index|
  puts "\n"
    if item[:checked].nil?
      puts "#{index + 1} - #{item[:name]} #{item[:price]}€"
    elsif item[:checked]
      puts "#{index + 1} - #{item[:name]} #{item[:price]}€   [X] "
    else
      puts "#{index + 1} - #{item[:name]} #{item[:price]}€   [ ] "
    end
  end
end


