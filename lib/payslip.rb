require_relative 'tax_brackets.rb'

class Payslip
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def printout
    tax_bracket = TaxBrackets.new(@salary)
    total_tax = tax_bracket.calculate_tax
    p "Monthly Payslip for: #{@name}"
    p "Gross Monthly Income: $#{@salary/12}"
    p "Monthly Income Tax: $#{total_tax/12}"
    p "Net Monthly Income: $#{(@salary - total_tax)/12}"
    return
  end

end
