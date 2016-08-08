require_relative "race"

# implement a horse race
# enter the name of 5 horses
# display their ranks at 4 steps of the race

horses = ["boudin créole", "vache à lait", "papillard nerveux", "mustang", "cacahuet"]
puts "Horses in departure are : "

puts "-" * 30

horses.each do |horse|
  puts horse
end
puts "-" * 30

puts "Bet a horse:"
bet_horse = gets.chomp
puts "\n"

puts "The race start!"

# shuffle horses

# display horses with their rank
final_ranking = Array.new
["100m", "200m", "300m", "Finally"].each do |step|
  puts "#{step}: the ranking is:"
  final_ranking = state_of_the_race(horses)
  puts "-" * 30
end
cd
if bet_horse == final_ranking[0]
  puts "You win !"
else
  puts "you loose, the winner is #{final_ranking[0]}"
end




