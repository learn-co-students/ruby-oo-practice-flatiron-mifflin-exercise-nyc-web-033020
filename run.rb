require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
dwight = Manager.new("Dwight", "Sales", 35)
pam = Manager.new("Pam", "Office", 27)
oscar = Manager.new("Oscar", "Accounting", 31)
ryan = Manager.new("Ryan", "Customer Service", 22)



dwight.hire_employee("Jim", 55900)
dwight.hire_employee("Andy", 48500)
dwight.hire_employee("Stanley", 51000)
dwight.hire_employee("Phyllis", 51000)

erin = pam.hire_employee("Erin", 23000)

angela = oscar.hire_employee("Angela", 29000)
kevin = oscar.hire_employee("Kevin", 27400)

kelly = ryan.hire_employee("Kelly", 28000)

binding.pry
puts "done"
