class Employee
    attr_reader :name
    attr_accessor :salary, :manager
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

    def self.paid_over(num)
        Employee.all.select {|emp| emp.salary > num}
    end

    def self.find_by_department(department)
        Employee.all.find {|employee| employee.manager.department == department}
    end

    def manager_name
        self.manager.name
    end

    def tax_bracket
        Employee.all.select {|employee| self.salary - employee.salary <= 1000 || employe.salary - self.salary >= 1000}
    end






end
