require "csv"
require_relative "../models/employee"

class EmployeesRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @employees = []
    load_csv
  end

  def find(employee_id)
    @employees.find { |employee| employee.id == employee_id }
  end

  def all
    @employees
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:manager] = row[:manager] == "true"
      @employees << Employee.new(row)
    end
  end
end