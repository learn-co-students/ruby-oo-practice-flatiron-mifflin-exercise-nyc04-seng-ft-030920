class Employee

    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary.to_i
        @manager = manager
        @@all << self
    end 

    def self.paid_over(num)
        big_salaries = Employee.all.select { |employee|
            employee.salary > num
        }
        big_salaries
    end 

    def self.find_by_department(department)
        # take a department
        # check to see if there are any managers working in that department
        # return the first employee that matches that manager

        manager = Manager.all.find { |manager|
            manager.department == department
        }

        manager.employees[0]
    end

    def tax_bracket
        employees = Employee.all.select { |employee|
            employee.salary < self.salary + 1000 && employee.salary > self.salary - 1000
        }
        employees
    end

    def self.all 
        @@all
    end 

    def inspect 
        "<Employee name: #{name}, Salary: #{salary}, Manager: #{manager}>"
    end 

end 