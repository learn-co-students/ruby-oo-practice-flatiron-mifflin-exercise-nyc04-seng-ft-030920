class Manager
attr_accessor :dept, :age
attr_reader :name
    @@all = []

    def initialize(name, dept, age)
        @name = name
        @dept = dept
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(new_emp, salary)
        new_hire = Employee.all.detect {|employee| employee.name == new_emp && employee.salary == salary}
        new_hire.manager = self
    end

    def self.all
        @@all
    end

    def self.all_departments
        d = self.all.map {|manager| manager.dept}
        d.uniq
    end

    def self.average_age
        a = self.all.map {|manager| manager.age}
        a.sum / a.count
    end
end
