class Employee
@@all = []
  attr_accessor :name, :salary, :manager

  def initialize(name, salary=0, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def employee_name
    p "Hi, my name is #{@name}"
  end




  def self.all
   @@all
  end

end
