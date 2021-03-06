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

    it 'should return the sum of numbers when given any variety of numbers' do
      expect(calculator.add_string_numbers('1,2,3')).to eq 6
      expect(calculator.add_string_numbers('1,2,3,4')).to eq 10
      expect(calculator.add_string_numbers('1,2,3,24,100')).to eq 130
      expect(calculator.add_string_numbers('0,0,0,0,0,0,0,0,0,1')).to eq 1
    end

    it 'should return zero when not given numbers' do
      expect(calculator.add_string_numbers('string')).to eq 0
      expect(calculator.add_string_numbers(',./-=``')).to eq 0
    end

    it 'should allow a new line as a delimiter between numbers' do
      expect(calculator.add_string_numbers("1,2\n3")).to eq 6
      expect(calculator.add_string_numbers("1\n2,3")).to eq 6
    end

    it "should be able to take any new delimiter
        specified as '//[delimiter]\\n' before the string" do
          expect(calculator.add_string_numbers("//;\n1;2;3")).to eq 6
        end

  end
end
