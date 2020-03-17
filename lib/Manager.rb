class Manager
    attr_accessor :name , :age , :department
     @@all = [] 
    def initialize(name ,department,age)
        @name = name
        @department = department
        @age = age
        @@all << self  
    end 

    def employees
        Employees.all.select do | employee | 
            employee.manager == self 
        end 
    end 
    
    def self.all 
        @@all 
    end 

    def self.all_departments

        Manager.all.map do |manager|
            manager.department
        end 
    end 

    def self.average_age 
        
    Manager.all.map do |num| 
        num.age
        end.sum.to_f
   #     @@all.sum do |manage| 
     #       manage.age.to_f
     #   end
    end 




end
