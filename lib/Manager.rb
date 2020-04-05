class Manager
  @@all = []
  attr_accessor :name, :age, :department
  def initialize(name,age,department=nil)
    @name = name
    @age = age
    @department = department
    Manager.all << self
  end
  def self.all 
    @@all
  end
  def employees
    Employee.all.select do |employee|
      employee.manager_name == self
    end
  end
  def hire_employee(employee)
    employee.manager_name = self.name
  end
  def self.average_age
    self.all.map do |manager|
      manager.age
    end / self.all.length
  end
end
