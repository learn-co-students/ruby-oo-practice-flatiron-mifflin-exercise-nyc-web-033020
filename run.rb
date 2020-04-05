require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'



#Test your code here

edgar = Manager.new("Edgar", "Paper", 26)
manager1 = Manager.new("John", "Paper", 29)
lei = Manager.new("Lei", "Paper", 25)
manager2 = Manager.new("Guy", "Warehouse", 26)
manager3 = Manager.new("Sam", "Paper", 26)
eman = Employee.new("Emmanuel", 200, lei)
employee1 = Employee.new("Melissa", 300, lei)
employee2 = Employee.new("Carmen", 250, edgar)
employee3 = Employee.new("Ashley", 500, lei)
employee1.tax_bracket
# binding.pry
"done"
