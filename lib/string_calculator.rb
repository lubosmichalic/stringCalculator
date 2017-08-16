class StringCalculator

  def add_string_numbers(string)
    return 0 if string == ''
    transform_string_into_array_of_ints(string).reduce(:+)
  end

  private

  def transform_string_into_array_of_ints(string)
    string.split(/[\,,\\n]/).map(&:to_i)
  end

end
