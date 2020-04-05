require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'



#Test your code here

manager1 = Manager.new('Sally',32,'HR')
manager2 = Manager.new('Bruce',45,'Sales')

bryce = Employee.new('bryce',30000,manager1)


manager2.hire_employee('Bob',25000)
manager2.hire_employee('Carol',29500)
manager2.hire_employee('Sue',30000)

binding.pry
puts "done"
