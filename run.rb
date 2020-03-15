require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


# Managers
eric = Manager.new("Eric Doe", "Sales", 50)
karen = Manager.new("Karen Killington", "Marketing", 56)
emily = Manager.new("Emily Sans", "Human Resources", 40)

# Employees
jack = Employee.new("Jack Wilson", 50_000, eric)
sophia = Employee.new("Sophia Abbots", 70_000, eric)
wilson = Employee.new("Wilson Torres", 84_000, karen)

# Tests
eric.employees
Manager.all
karen.hire_employee("Amy Woo", 83_000)
Manager.all_departments
Manager.average_age

Employee.all
Employee.paid_over(80_000)
Employee.find_by_department("Sales")
wilson.tax_bracket

binding.pry
puts "done"
