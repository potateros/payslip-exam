require_relative '../lib/payslip.rb'
require_relative '../lib/tax_brackets.rb'

describe Payslip do
  before do
    @bob = Payslip.new("Bob", 60000)
    @ali = Payslip.new("Ali", 200000)
    @lim = Payslip.new("Lim", 80150)
  end

  describe "Bob with annual salary of 60000" do
    it "calculates annual tax of 6000" do
      expect(@bob.total_tax).to eq 6000
    end
  end

  describe "Ali with annual salary of 200000" do
    it "calculates annual tax of 48000" do
      expect(@ali.total_tax).to eq 48000
    end
  end

  describe "Bob with annual salary of 80150" do
    it "calculates annual tax of 10045" do
      expect(@lim.total_tax).to eq 10045
    end
  end

end
