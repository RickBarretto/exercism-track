=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn

  def self.enough_length?(content)
    content.length > 1
  end

  def self.all_digits?(numbers)
    numbers.all? {|char| ("0".."9").include? char}
  end

  def self.divisible?(number, other)
    return number % other == 0
  end

  def self.double_even_indexes!(array)
    array.each_index do |idx| 
      if idx.odd?
        doubled = array[idx] * 2
        array[idx] = (doubled > 9)? doubled - 9 : doubled
      end
    end
  end
    
  def self.valid?(input)
    # For some reason, strip was not working
    numbers = input.reverse().chars()
    numbers.filter! { |el| el != " "}
    
    if not enough_length? numbers or not all_digits? numbers
      return false
    end

    numbers.map! {|char| char.to_i }
    self.double_even_indexes! numbers
    
    return self.divisible? numbers.sum(), 10
    
  end

end
