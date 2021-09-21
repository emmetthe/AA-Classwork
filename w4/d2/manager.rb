require_relative "employee.rb"

class Manager < Employee 
  def initialize
    super
    @employees = []
  end

  def bonus(multiplier)
    self.total_salary * multiplier
  end

  def total_salary
    salaries = @employees.map {|employee| employee.salary}
    
    salaries.inject { |acc, el| acc + el }
  end
end

