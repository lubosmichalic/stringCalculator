require 'string_calculator'

describe StringCalculator do
  subject(:calculator) { described_class.new}

  it { is_expected.to respond_to(:add_string_numbers).with(1).argument }

  it 'should return 0 for an empty string' do
    expect(calculator.add_string_numbers('')).to eq 0
  end
end
