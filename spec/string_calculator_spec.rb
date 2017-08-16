require 'string_calculator'

describe StringCalculator do
  subject(:calculator) { described_class.new }

  it { is_expected.to respond_to(:add_string_numbers).with(1).argument }

  describe '#add_string_numbers' do
    it 'should return 0 for an empty string' do
      expect(calculator.add_string_numbers('')).to eq 0
    end

    it "should return the number when given a single number " do
      expect(calculator.add_string_numbers('1')).to eq 1
    end

    it 'should return the sum of numbers when given two numbers' do
      expect(calculator.add_string_numbers('1,2')).to eq 3
    end
  end
end
