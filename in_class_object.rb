class Employee
  attr_accessor :employee_name, :employee_city
end



class Company
  attr_accessor :company_name, :company_city,
end

   def initialize
     @employees = []
   end

   def hire_employee(employee)
   @employees << employees
   end

   def fire_employee

    employee = employee.new
    hire_employee = employee.hire_employee(employee)



  def employee_name
    Puts "Your Name"
    return @employee_name
  end

  def company_name=(name)
    @company_name = name
  end

  def company_name
    return @company_name
  end

  def company_city=(city)
    @company_city = city
  end

  def company_city
    return @company_city
  end

  def employee_city=(city_name)
    puts "What's your city"
    @employee_city = city_name
  end

  def employee_city
    return @employee_city
  end

  def employees=(employees)
    @employees = employees
  end

  def employees
    return @employees
  end

  # Adds the passed employee to the company employee list
  def hire_employee(employee)

  end

  # Removes the passed employee from the company employee list
  def fire_employee(employee)

  end



end

obj = Object.new
obj.employee_name = 'Brian Burridge'
obj.employee_city = 'Clearwater'
# obj.employees = ?
obj.hire_employee(obj)
obj.fire_employee(obj)
