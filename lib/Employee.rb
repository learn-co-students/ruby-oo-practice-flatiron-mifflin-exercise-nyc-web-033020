class Employee
    attr_reader :name, :salary, :manager

    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        Employee.all << self 
    end

    def self.all
        @@all
    end

    def self.paid_over(annual)
        Employee.all.select do |employee|
            employee.salary > annual
        end
    end


    def self.find_by_department(department)
        Manager.all.first do |managers| 
            managers.department == department
        end
    end

    def tax_bracket
        employees = []
        Employee.all.each do |employee|
            self.salary - 1000 < employee.salary && employee.salary < self.salary + 1000
            employees << employee.name
        end
    end
end


