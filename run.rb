require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new("Michael", 47, "Sales")
ellen = Manager.new("Ellen", 38, "Accounting")
dwight = michael.hire_employee("Dwight", 37000)
pam = michael.hire_employee("Pam", 40000)
jim = michael.hire_employee("Jim", 37500)

binding.pry
puts "done"
