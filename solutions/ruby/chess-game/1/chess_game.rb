module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) and FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    first_name[0..1].upcase() << last_name[-2..-1].upcase()
  end

  def self.move_message(first_name, last_name, square)
      nick = self.nick_name first_name, last_name
    file = square[0]
    rank = square[1..].to_i
    if self.valid_square?(rank, file)
        "#{nick} moved to #{square}"
    else
        "#{nick} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
