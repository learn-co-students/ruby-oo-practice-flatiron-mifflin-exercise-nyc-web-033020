class Manager
    attr_reader :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 

        Manager.all << self 
    end

    def employees
        Employee.all.select do |employee|
            employee.name
        end
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, self, salary)
    end

    def self.all_departments
        Manager.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        sum = 0
        Manager.all.each do |manager|
            sum += manager.age
        end
        sum/Manager.all.count 
    end


end
