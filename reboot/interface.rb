require_relative 'calculator'

# Doit demander un nombre
# un deuxieme
# afficher le résultat
# l'utilisateur doit pouvoir choisir l'opération

first_number = ask_for_a_number('first')
if is_a_number?(first_number)
  puts "What kind of operation you want to make : \+ \- \* \/"
  operation = gets.chomp
  second_number = ask_for_a_number('second')
  if is_a_number?(second_number)
    puts "The result of #{first_number} + #{second_number} = "
    puts calculate(operation, first_number, second_number)
  else
      puts display_error_on_number
  end
else
    puts display_error_on_number
end





