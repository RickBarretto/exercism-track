class ResistorColorDuo
  
  COLORS = %w[                   
    black brown red    orange yellow
    green blue  violet grey   white
  ].freeze()

  def self.value(resistors)
    resistors[0..1]
      .map {|color| COLORS.index(color)}
      .join("")
      .to_i
  end

end