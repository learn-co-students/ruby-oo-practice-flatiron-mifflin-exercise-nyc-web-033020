require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/ManagerEmployee"
require 'pry'


#Test your code here
jordan = Manager.new("jordan", "food", 24)
lance = Manager.new("Lance", "computers", 23)
ignace = Manager.new("Ignace", "food", 31)

my = ignace.hire_employee("myriam", 9500)
ma = ignace.hire_employee("maud", 9000)
an = ignace.hire_employee("antoine", 8500)
sal = ignace.hire_employee("salope", 5)




binding.pry
puts "done"
