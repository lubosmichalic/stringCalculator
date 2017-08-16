class StringCalculator

  def add_string_numbers(string)
    return 0 if string == ''
    string.split(',').map(&:to_i).reduce(:+)
  end


end
