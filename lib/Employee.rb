require "pry"

class Employee
    attr_reader :name, :salary
    attr_accessor :manager
    @@all = []
    def initialize(name, salary, manager = nil)
        @name = name
        @salary = salary
        @manager = manager
        Employee.all << self
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over (num)
        Employee.all.select {|employee| employee.salary > num}
    end

    def self.find_by_department(string)

        Manager.all.first {|managers| 
        managers.department == string}
    end
    
    def tax_bracket
        result = []
        max = self.salary + 100
        min = self.salary - 100
        # binding.pry
        Employee.all.each do |employees|
           result << employees.name if employees.salary < max && employees.salary > min 
        end
        result
    end

    def self.all
        @@all
    end
end



