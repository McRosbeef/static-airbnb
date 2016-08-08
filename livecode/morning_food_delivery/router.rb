class Router
  def initialize(sessions_controller)
    @sessions_controller = sessions_controller
  end

  def run
    # login for employee
    employee = @sessions_controller.sign_in
    # display menu towards employee status
    # TODO loop on menu
      if employee.manager
        display_menu_for_manager
      else
        display_menu_for_delivery_guy
      end
  end

  private

  def display_menu_for_manager
    puts "THIS IS MENU FOR MANAGER"
  end

  def display_menu_for_delivery_guy
    puts "THIS IS MENU FOR DELIVERY GUY"
  end
end
