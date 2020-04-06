require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
pam = Employee.new("Pam Beesly", 32500, "Jim")
dwight = Employee.new("Dwight Shrute", 80000, "Michael")
kelly = Employee.new("Kelly Kapoor", 1, "Jim")
stanley = Employee.new("Stanley Hudson", 50000, "Michael")
andy = Employee.new("Andrew Bernard", 45000, "Michael")
kevin = Employee.new("Kevin Malone", 40000, "Jim")

michael = Manager.new("Michael", "sales", 46)
jim = Manager.new("Jim", "customer service", 31)
toby = Manager.new("Toby", "human resources", 40)

binding.pry
puts "done"