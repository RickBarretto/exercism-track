

class Luhn

  def self.enough_length?(content)
    content.length > 1
  end

  def self.all_digits?(numbers)
    numbers.all? {|char| ("0".."9").include? char}
  end

  def self.divisible?(number, other)
    (number % other).zero?
  end

  def self.double(number)
    doubled = number * 2
    (doubled > 9)? doubled - 9 : doubled
  end

  def self.double_even_indexes(array)
    array.reverse.map.with_index do |num, idx|
      idx.odd? ? (double num) : num
    end
  end

  def self.valid?(input)
    # For some reason, strip was not working
    numbers = input.chars()
      .filter {|el| el != " "}
    
    if not enough_length? numbers or not all_digits? numbers
      return false
    end

    sum = self.double_even_indexes(
      numbers.map!(&:to_i)
    ).sum()
    
    self.divisible? sum, 10
  end

end
