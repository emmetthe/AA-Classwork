require_relative "employee.rb"

class Manager < Employee 
  attr_reader :employees

  def initialize
    super
    @employees = []
  end

  def add_employees(sub)
    employees << sub
  end

  def bonus(multiplier)
    self.total_salary * multiplier
  end

  def total_salary
    salaries = @employees.map {|employee| employee.salary}
    
    salaries.inject { |acc, el| acc + el }
  end
end

ned = Manager.new("Ned",1_000_000, "Founder", nil)
darren = Manager.new("Darren",78_000,"TA Manager", ned)
shawna = Employee.new("Shawna",12_000,"TA",darren)
david = Employee.new("David",10_000,"TA",darren)

