require_relative 'tax_brackets.rb'

class Payslip
  attr_accessor :name, :salary
  attr_reader :total_tax

  def initialize(name, salary)
    @name = name
    @salary = salary
    tax_bracket = TaxBrackets.new(@salary)
    @total_tax = tax_bracket.calculate_tax.floor
  end

  def printout
    p "Annual Payslip for: #{@name}"
    p "Gross Annual Income: $#{@salary}"
    p "Annual Income Tax: $#{@total_tax}"
    p "Net Annual Income: $#{@salary - @total_tax}"
    return
  end

end
