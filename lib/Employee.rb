class Employee

    attr_accessor :name, :salary, :manager_name
    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(over_salary)
        @@all.select{|employee| employee.salary > over_salary}
    end

    def self.find_by_department(department)
        @@all.select{|employee| employee.manager_name.department == department}
    end

    def tax_bracket
        tolerance = 1000
        @@all.select do |employee| 
            employee.salary.between?(self.salary - tolerance, self.salary + tolerance) && employee != self
        end
    end
end
