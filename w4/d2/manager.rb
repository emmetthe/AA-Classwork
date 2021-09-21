require_relative "employee.rb"

class Manager < Employee 
  attr_reader :employees

  def initialize(name,salary,title,boss)
    super
    @employees = []
  end

  def add_employees(*sub)
    sub.each do |subs|
      employees << subs
    end
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

ned.add_employees(darren, shawna, david)
darren.add_employees(shawna, david)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
