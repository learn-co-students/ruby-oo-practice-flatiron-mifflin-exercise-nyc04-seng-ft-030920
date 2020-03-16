class Manager 
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_i
        @@all << self
    end 

    def employees
        managers_employees = Employee.all.select { |employee|
            employee.manager == self
        }
        managers_employees
    end 

    def hire_employee(employee_name, salary)
        Employee.new(employee_name, salary, self)
    end 

    def self.all_departments 
        departments = []
        Manager.all.each { |manager|
             departments << manager.department
        }

        departments
    end 

    def self.average_age
        avg_ages = Manager.all.map { |manager|
            manager.age
        }

        avg_ages = avg_ages.sum.to_f / avg_ages.length
        avg_ages
    end 

    def self.all
        @@all
    end 

    def inspect 
        "<Manager name: #{name}, Age: #{age}, Department: #{department}>"
    end 

end 