require_relative './lib/payslip.rb'

def main
  payslip = Payslip.new(ARGV[0], ARGV[1].to_i)
  payslip.printout()
end

main
