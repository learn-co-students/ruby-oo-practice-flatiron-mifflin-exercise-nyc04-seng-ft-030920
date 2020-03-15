class Employee
attr_accessor :salary, :manager
attr_reader :name
    @@all = []

    def initialize(name, salary, manager=nil)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select {|employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        self.all.detect {|employee| employee.manager.dept == department}
    end

    def tax_bracket
        bracket = (self.salary-1000..self.salary+1000)
        Employee.all.select {|employee| bracket.include?(employee.salary)}
    end
end
