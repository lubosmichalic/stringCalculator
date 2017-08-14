require 'string_calculator'

describe StringCalculator do
  it { is_expected.to respond_to(:add_string_numbers).with(1).argument }
end
