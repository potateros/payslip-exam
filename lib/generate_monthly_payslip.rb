require_relative 'payslip.rb'

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
  bob_payslip = Payslip.new(user_input[0], user_input[1])
  bob_payslip.printout()
end

main
