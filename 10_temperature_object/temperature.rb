class Temperature
  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end

  def to_celsius
    ((@f - 32) * (5.0/9.0)).round
  end

  def to_fahrenheit
    ((@c * (9.0/5.0)) + 32).round
  end

  def self.in_fahrenheit(f)
    Temperature.new(:f => f)
  end

  def self.in_celsius(c)
    Temperature.new(:c => c)
  end
end

temp = Temperature.new(:c => 100)
puts Temperature.in_celsius(50).to_celsius
