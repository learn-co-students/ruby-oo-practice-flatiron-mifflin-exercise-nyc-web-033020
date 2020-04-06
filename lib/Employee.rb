class Employee
    attr_reader :name
    attr_accessor :salary
    @@all = []
    def initialize(name, salary)
        @name =name
        @salary =salary
        @@all << self
    end
    def self.all
        @@all
    end
    def manager_name
        ManagerEmployee.all.select do |key|
            if key.employee == self
                return key.manager.name
            end
        end
    end

    def self.paid_over(num)
        array = []
        @@all.select do |key|
            if key.salary > num
                array << key
            end

        end
        array
    end
    def self.find_by_department(department)
        @@all.find do |key|
            ManagerEmployee.all.find do |value|
                if key.manager_name == value.manager.name && value.manager.department == department
                    return key
                end
            end
        end
    end
    def tax_bracket
        array = []
        Employee.all.select do |key|
            diffence1 = self.salary - key.salary
            diffence2 = key.salary - self.salary
            if (diffence1 < 1000 && diffence1 > 0) || (diffence2 < 1000 && diffence2 > 0)
                array << key
            end
        end
        array
    end

end
