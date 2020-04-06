class Manager
    attr_reader :name
    attr_accessor :age, :department
    @@all = []
    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age
        @@all << self
    end
    def self.all
        @@all
    end
    def employees
        array = []
        ManagerEmployee.all.select do |key|
            if key.manager == self
                array << key.employee
            end
        end
        array
    end

    def hire_employee(employee_name, employee_salary)
        new_employee = Employee.new(employee_name, employee_salary)
        ManagerEmployee.new(self, new_employee)
        new_employee
    end
    def self.all_departments
        array = []
        @@all.select do |key|
            array << key.department
        end
        array.uniq
    end
    def self.average_age
        ans = 0
        @@all.select do |key|
            ans += key.age
        end
        ans = (ans * 1.0) / (@@all.count * 1.0)
    end


end
