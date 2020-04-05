class Manager
    attr_reader :name, :department, :age
    @@all = []
    def initialize (name, department, age)
        @name = name
        @department = department
        @age = age
        Manager.all << self
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def employees
        Employee.all.select { |employees| employees.manager == self}
    end

    def self.all_departments
        Manager.all.map { |managers| managers.department}
    end

    def self.ages
        Manager.all.map {|managers| managers.age.to_f}
    end

    def self.average_age
        average = (Manager.ages.sum/Manager.ages.count).to_f
    end

    def self.all
        @@all
    end

end
