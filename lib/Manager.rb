class Manager
    attr_reader :name, :age
    attr_accessor :department, :employees
    @@all = []
    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        Manager.all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        all_departments = Manager.all.map do |mgr| 
            mgr.department
        end
    end

    def self.average_age
        ages = Manager.all.map {|mgr| mgr.age}
        age_total = ages.reduce {|sum, n| sum + n}
        num_mgr = Manager.all.length
        avg_age = (age_total/num_mgr)
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
       Employee.new(name, salary, self)
    end

end
