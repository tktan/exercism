module BookKeeping
  VERSION = 3
end

class Gigasecond
  def self.from t
    t + 1e9
  end
end
