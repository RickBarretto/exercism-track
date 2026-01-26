module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.upcase()[0..3].to_sym()
  end

  def self.get_terminal(ship_identifier)
    cargo_kind = ship_identifier.to_s[0..2]
    if cargo_kind == "OIL" or cargo_kind == "GAS" 
      :A
    else
        :B
    end
  end
end
