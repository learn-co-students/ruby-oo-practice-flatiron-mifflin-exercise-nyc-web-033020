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
        # Employee.all.each do |employee|
        #     employee.find(department)
        # end
    end
end
