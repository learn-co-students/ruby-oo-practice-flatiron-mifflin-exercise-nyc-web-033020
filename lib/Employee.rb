class Employee
  @@all = []

  attr_reader :name
  attr_accessor :salary, :manager

  def initialize name, salary, manager
    @name = name
    @salary = salary
    @manager = manager
    Employee.all << self
  end

  def self.all
    @@all
  end

  def manager_name
    self.manager.name
  end

  def tax_bracket
    Employee.all.select{ |emp| emp.salary >= self.salary - 1000 && emp.salary <= self.salary + 1000 }
  end

  def self.paid_over pay
    Employee.all.select{ |employee| employee.salary >= pay }
  end

  def self.find_by_department dept
    Employee.all.find{ |employee| employee.manager.department == dept }
  end
end
