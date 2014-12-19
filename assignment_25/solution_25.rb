# Create classes that make sense for better encapsulating attributes and methods
# The app should prompt the user to enter information for the company.
# The app should prompt the user to enter each employee. It will then "hire" each of them.
# The app should show a list of employees, with ids, then ask the user if they would like to fire an employee by entering that id
# The app should then fire the employee by id and show an updated list with that employee no longer in it.

class Employee
  attr_accessor :employee_name, :employee_city, :employees, :employee_id

  @@employee_num = 0

  def initialize
    @@employee_num += 1
    @employee_id = @@employee_num
  end

end

class Company
  attr_accessor :company_name, :company_city, :employees

  def initialize
    @employees = []
  end

  # Adds the passed employee to the company employee list
  def hire_employee(employee)
    @employees << employee
  end

  # Removes the passed employee from the company employee list
  def fire_employee(employee)
    @employees.reject! {|employ| employ.employee_id == employee.employee_id}

  end
end

# The app should prompt the user to enter information for the company.
new_com = Company.new
print "what company do you work for:\n"
new_com.company_name = gets.strip
print "In what city:\n"
new_com.company_city = gets.strip

# The app should prompt the user to enter each employee. It will then "hire" each of them.
loop do
  employee = Employee.new
  print "Please enter your employee name:\n "
  employee.employee_name = gets.strip

  break if employee.employee_name == ""

  print "Please enter home city:\n "
  employee.employee_city = gets.strip
  new_com.hire_employee(employee)
end

# The app should show a list of employees, with ids, then ask the user if they would like to fire an employee by entering that id

new_com.employees.each do |employee|
  print "This is a list of employees name and id who works for #{new_com.company_name}\n"
  puts "Employee: #{employee.employee_name} Employee Id: #{employee.employee_id}"

end

print "Enter the Employee ID that you would like to fire\n"
 emp_id = gets.strip.to_i

if emp_id
  select_employee = new_com.employees.select { |emp| emp.employee_id == emp_id }.first
  new_com.fire_employee(select_employee)
  puts "Goodbye #{select_employee.employee_name}"

  # The app should then fire the employee by id and show an updated list with that employee no longer in it.
  new_com.employees.each do |f|
    print "Here your updated list of employees:"
    puts "Name: #{f.employee_name}, ID: #{f.employee_id}"
  end
end