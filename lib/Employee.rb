class Employee
  @@all = []
  attr_accessor :name, :age, :salary, :manager_name
  def initialize(name,age,salary=nil,manager_name=nil)
    @name = name
    @age = age
    @salary = salary
    @manager_name = manager_name
    Employee.all << self
  end
  def self.all
    @@all
  end
  def tax_bracket
    # Return array of employees +/- 1000 from instance salary
    Employee.all.select do |employee|
      employee.salary >= self.salary - 1000 && employee.salary <= self.salary - 1000
    end
  end
  def self.paid_over(pay)
    self.all.select do |employee|
      employee.salary >= pay
    end
  end
  def self.find_by_dept(department)
    Manager.all.find do |manager|
      manager.department == department
    end.employees
  end
end
