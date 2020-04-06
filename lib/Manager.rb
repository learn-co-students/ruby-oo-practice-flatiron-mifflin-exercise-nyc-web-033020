class Manager
  attr_accessor :name, :age, :department
  @@all = []
  def initialize(name, age=0, department)
    @name = name
    @age = age
    @department = department
    Manager.all << self
    @employees = []
  end

  def manager_name
    p "Hi, my name is #{@name}!"
  end

  def manager_department
    p "I oversee the #{@department} department."
  end

  def manager_employees
    Employee.all.select do |employee|
      employee.manager = self
    end
  end

  def self.all
    @@all
  end

  def employees
    @employees
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end



end
