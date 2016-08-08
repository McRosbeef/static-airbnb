require_relative "app/models/meal"
require_relative "app/models/customer"
require_relative "app/models/order"
require_relative "app/repositories/meals_repository"
require_relative "app/repositories/customers_repository"
require_relative "app/repositories/employees_repository"
require_relative "app/repositories/orders_repository"
require_relative "app/views/sessions_view"
require_relative "app/controllers/sessions_controller"
require_relative "router"

employees_repo = EmployeesRepository.new("data/employees.csv")
sessions_controller = SessionsController.new(employees_repo)
router = Router.new(sessions_controller)
router.run

# blanquette = Meal.new(name: "blanquette", price: 12)
# meals_repo = MealsRepository.new("data/meals.csv")

# meals_repo.add(blanquette)

# p meals_repo

# boris = Customer.new(name: "Boris", address: "16 villa gaudelet")
# customers_repo = CustomersRepository.new("data/customers.csv")

# customers_repo.add(boris)

# p customers_repo

# employees_repo = EmployeesRepository.new("data/employees.csv")

# p employees_repo


# order = Order.new(meal: blanquette, customer: boris, employee: employees_repo.all.last)

# orders_repo = OrdersRepository.new("data/orders.csv", meals_repo, customers_repo, employees_repo)
# orders_repo.add(order)
# p orders_repo
