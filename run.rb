require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

sally = Manager.new('Sally Blue',32)
sally.department = 'Sales'

bob = Manager.new('Bobby Glue', 45, 'HR')

hanna = Manager.new('Hanna Mensch', 56, 'Sales')


tommy = Employee.new('Tommy Twofingers', 21)
tommy.salary = 38000

greasemonkey = Employee.new('Grease Monkey', 28, 42000)

red = Employee.new('Red Fred', 30, 42500)

#Test your code here


binding.pry
puts "done"
