require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
dwight = Manager.new("Dwight", "Sales", 35)
pam = Manager.new("Pam", "Office", 27)
oscar = Manager.new("Oscar", "Accounting", 31)
ryan = Manager.new("Ryan", "Customer Service", 22)

# jim = Employee.new("Jim", 55900)
# andy = Employee.new("Andy", 48500)
# stanley = Employee.new("Stanley", 51000)
# angela = Employee.new("angela", 51000)
# erin = Employee.new("erin", 51000)
# meredith = Employee.new("meredith", 51000)
# creed = Employee.new("Creed", 51000)
# kelly = Employee.new("kelly", 51000)
# kevin = Employee.new("kevin", 51000)
# phyllis = Employee.new("phyllis", 51000)

dwight.hire_employee("Jim", 55900)

binding.pry
puts "done"
