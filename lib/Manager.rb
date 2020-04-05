class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employee = []
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

end
 