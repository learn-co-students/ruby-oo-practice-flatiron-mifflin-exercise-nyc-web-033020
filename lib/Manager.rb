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

    def self.average_age
        age_array = []
        sum = 0
        arr_length = 0
        Manager.all.each do |manager|
           age_array << manager.age
        end
        arr_length = age_array.length
        sum = age_array.reduce(0) {|sum, n| sum + n}
        sum / arr_length
    end

end
