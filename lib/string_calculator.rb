class StringCalculator

  DEFAULT_DELIMETERS = /[\,,\n]/

  def add_string_numbers(string)
    return 0 if string == ''
    transform_string_into_array_of_ints(string).reduce(:+)
  end

  private

  def transform_string_into_array_of_ints(string)
    delimiters = check_delimiters(string)
    string.split(delimiters).map(&:to_i)
  end

  def check_delimiters(string)
    return string[%r[\A//.+]][2..-1] if string[%r[\A//]]
    DEFAULT_DELIMETERS
  end

end
