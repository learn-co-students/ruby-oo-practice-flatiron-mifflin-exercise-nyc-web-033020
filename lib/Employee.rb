class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        Employee.all << self
    end

    def manager_name
        @manager
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        new_array = []
        Employee.all.each do |employee| 
            if employee.salary > num
                new_array << employee
            end
        end
        new_array
    end

    def self.find_by_department(department)
        
    end

    def tax_bracket
        wage = self.salary
        other_employees = []
        Employee.all.each do |employee|
            if ((wage - employee.salary).abs < 1000) || ((employee.salary - wage).abs < 1000 )
                other_employees << employee
            end
        end
        other_employees #not perfect, includes originial instance
    end
end
