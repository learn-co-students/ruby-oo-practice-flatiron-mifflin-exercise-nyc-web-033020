class Employee

    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def initialize(name, salary, manager = nil)
        @name = name
        @salary = salary
        @manager = manager
        Employee.all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        array = self.all.select { |employee| employee.salary > amount } 
        array.map { |employee| employee.name }
    end

    def self.find_by_department(department)#sales
        self.all.find { |employee| employee.manager.department == department }.name
    end

    def tax_bracket
        array = Employee.all.select { |employee| employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000 }
        array.map { |employee| employee.name }
    end



    # Employee#tax_bracket
    # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method

    #input name of employee = "Ryan"
    #all instances of employees = self.all
        # employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000
    #select employees who are within $1k = select { |employee| >= }
    #output array of employees

end
  