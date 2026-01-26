class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    default_rate = 221 # cars per hour
    if @speed <= 4
        @speed * default_rate
    elsif @speed >= 5 and @speed <= 8
        @speed * default_rate * 0.9
    elsif @speed == 9
        @speed * default_rate * 0.8
    elsif @speed == 10
        @speed * default_rate * 0.77
    end
  end

  def working_items_per_minute
        (production_rate_per_hour() / 60).to_i
  end
end
