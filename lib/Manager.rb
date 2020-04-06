class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        Manager.all << self
    end

    def self.all
        @@all
    end

    # not working
    def employees
        Employee.all.select do |employee|
           employee.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.map {|manager| manager.department}
    end

    # not working
    def self.average_age
        age_array = []
        Manager.all.each do |manager|
            manager.age << age_array
        end

        sum = 0
        age_array.each do |num|
            sum += num
        end
        sum / age_array.count
    end

end
