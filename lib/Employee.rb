class Employee

    attr_accessor :name, :salary, :manager

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


end
  