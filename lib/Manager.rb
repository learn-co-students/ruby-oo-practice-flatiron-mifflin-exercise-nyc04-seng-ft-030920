class Manager

    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select{|employee| employee.manager_name == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map(&:department)
    end

    def self.average_age
        ages = @@all.map(&:age)
        average = ages.sum / ages.length
    end
end
