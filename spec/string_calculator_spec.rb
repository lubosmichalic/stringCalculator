require 'string_calculator'

describe StringCalculator do
  subject(:calculator) { described_class.new}

  it { is_expected.to respond_to(:add_string_numbers).with(1).argument }

  describe '#add_string_numbers' do
    it 'should return 0 for an empty string' do
      expect(calculator.add_string_numbers('')).to eq 0
    end

    it "should return 1 when given '1' " do
      expect(calculator.add_string_numbers('1')).to eq 1
    end
  end
end
