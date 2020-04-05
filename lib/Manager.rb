class Manager

    attr_accessor :name, :department, :age

    @@all = []
    

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        Manager.all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    # def self.average_age
    #     all_age = 0.0
    #     self.all.map do |manager|
    #         all_age += manager.age
    #     end
    #     all_age / self.all.count
    # end

    def self.average_age
        self.all.sum { |manager| manager.age.to_f } / self.all.count 
    end

end
 

#avg_age = managers.age / # managers
#pull in array of mgrs
#iterate to find age of all mgrs
#return value / # managers
