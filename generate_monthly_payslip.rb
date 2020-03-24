class Payslip

  def initialize(user_input)
    @user_input = user_input
  end

  def calculate_tax(user_salary)
    # [bracket threshold, tax rate, previous tax bracket amount]
    rates = [0,0,0]

    if user_salary <= 20000
      rates = [0,0,0]
    elsif user_salary <= 40000
      rates = [20000, 0.1, 0]
    elsif user_salary <= 80000
      rates = [40000, 0.2, 2000]
    elsif user_salary <= 180000
      rates = [80000, 0.3, 10000]
    else
      rates = [180000, 0.4, 40000]
    end

    return ((user_salary - rates[0]) * rates[1]) + rates[2]

  end

  def printout
    tax = calculate_tax(@user_input[1])
    p "Annual Payslip for: #{@user_input[0]}"
    p "Gross Annual Income: $#{@user_input[1]}"
    p "Annual Income Tax: $#{tax}"
    p "Net Annual Income: $#{@user_input[1] - tax}"
    return
  end

end

def parse_params
  if ARGV.length == 2
    ARGV[1] = ARGV[1].to_i
      return ARGV
  else
    p 'Enter 2 options only - name and salary. Example: ruby generate_monthly_payslip Ren 60000'
    return [0]
  end
end

def main
  user_input = parse_params
  generated_payslip = Payslip.new(user_input)
  generated_payslip.printout()
end

main
