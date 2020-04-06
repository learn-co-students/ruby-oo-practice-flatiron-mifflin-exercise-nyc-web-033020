class Manager
    attr_accessor :employee
    attr_reader :name, :department, :age
    @@all = []
    @@all_departments = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        Manager.all << self
        Manager.all_departments << self.department
    end

    def employees
        Employee.all.select do |emp|
            emp.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all
        @@all
    end

    def self.all_departments
        @@all_departments
    end

    def self.average_age
        combined_age = Manager.all.reduce(0) do |accumulator, manager|
            puts accumulator
            puts manager.age
            accumulator += manager.age
        end
        (combined_age / Manager.all.count).to_f 
    end
    
end
