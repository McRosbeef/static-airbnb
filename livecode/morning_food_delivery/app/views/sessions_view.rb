class SessionsView
  def ask_for_info(info)
    puts "#{info.capitalize}?"
    print ">"
    gets.chomp
  end

  def display_error_message
    puts "Wrong username or password, try again ..."
  end
end
