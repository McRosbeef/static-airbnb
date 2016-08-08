# require_relative "interface"

def state_of_the_race(horses)
  shuffle_horses = Array.new
  horses.shuffle.each_with_index do |horse, index|
    shuffle_horses << horse
    puts "#{index+1} - #{horse}"
  end
  return shuffle_horses
end
