class Employee
    attr_accessor :salary, :manager
    attr_reader :name
    @@all = []

    def initialize (name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        Employee.all << self
    end

    def my_manager
        self.manager
    end

    def manager_name
        my_manager.name
    end

    def my_salary
        self.salary
    end

    def my_tax_bracket_upper
        my_salary + 1000
    end

    def my_tax_bracket_lower
        my_salary - 1000
    end

    def tax_bracket
        Employee.all.select do |emp|
            emp.salary <= my_tax_bracket_upper && emp.salary >= my_tax_bracket_lower
        end
    end

    def self.all
        @@all
    end

    def self.paid_over (num)
        Employee.all.select do |emp|
            emp.salary > num
        end
    end

    def self.find_by_department(dept_name)
        Employee.all.find do |emp|
            emp.my_manager.department == dept_name
        end
    end
        
end
