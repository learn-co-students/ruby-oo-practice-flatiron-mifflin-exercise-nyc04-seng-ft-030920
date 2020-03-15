require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

m1 = Manager.new("Joe P", "Sanitation", 47)
m2 = Manager.new("Phil D", "Operations", 65)
m3 = Manager.new("Jane S", "IT", 25)
m4 = Manager.new("Hal K", "HR", 39)
m5 = Manager.new("Kathy B", "Accounting", 35)


e1 = Employee.new("Billy B", 55_000, m5)
e2 = Employee.new("John D", rand(65_000..80_000), m3)
e3 = Employee.new("Sara J", rand(65_000..80_000), m2)
e4 = Employee.new("Allie V", rand(65_000..80_000), m1)
e5 = Employee.new("Pam X", rand(65_000..80_000), m1)
e6 = Employee.new("Danny I", rand(65_000..80_000), m3)
e7 = Employee.new("Brad C", rand(65_000..80_000), m5)
e8 = Employee.new("Joanna C", rand(65_000..80_000), m5)


binding.pry
puts "done"
