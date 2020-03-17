require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
hillary = Manager.new("Hillary" , "software" , 39)
umar = Manager.new("Umar" , "black" , 58)
xavier = Employee.new("Xavier" ,  100_000_000, umar)
david = Employee.new("David" , 49_000_000 , hillary)
mavid = Employee.new("David" , 99_999_000 , hillary)
delvid = Employee.new("Hollow", 100_001_000, umar)
binding.pry
puts "done"
