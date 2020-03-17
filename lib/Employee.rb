class Employee
attr_accessor :name , :salary , :manager

@@all = [] 
def initialize(name , salary , manager)
 
    @name = name 
    @salary = salary 
    @manager = manager
  @@all << self
end

def self.all 
    @@all 
end 

def self.paid_over(rate)
   Employee.all.select do |paid| 
     paid.salary > rate 
   end 
end 

def self.find_by_department(department)

    Manager.all.find do |manager| 
        manager.department == department
    end 

end 

def tax_bracket
    @@all.select do | worker | 
     (worker.salary + 1000 == self.salary) || (worker.salary - 1000 == self.salary) 


    end 
end 




    


end
