require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new("Michael", "Sales", 34)
jan = Manager.new("Jan", "Executive", 37)
michael.employees
michael.hire_employee("Jim", 75_000)
jan.hire_employee("Hunter", 30_000)
jan.employees

dwight = Employee.new("Dwight", 50_000, michael)
angela = Employee.new("Angela", 50_950, michael)
meredith = Employee.new("Meredith", 49_500, michael)
Manager.all_departments 
Manager.average_age

Employee.paid_over(30_000)
Employee.find_by_department("Sales")


binding.pry
puts "done"
