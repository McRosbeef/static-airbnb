

def calculate(operation, first_number, second_number)

if operation == "*"
    result = puts first_number * second_number
  elsif operation == "+"
    result = puts first_number + second_number
  elsif operation == "/"
    result = puts (first_number.to_f / second_number).round(2)
  elsif operation == "-"
    result = puts first_number - second_number
  else
    result = "Don't understand your #{operation}"
end
  return result
end


def ask_for_a_number(rank)
  puts "Give me a #{rank} number to add"
  return gets.chomp.to_i
end

def is_a_number?(number)
  return number.to_s =~ /\d+/
end

def display_error_on_number
  return puts "Dude, no no no, it's not a number "
end
