class Temperature
  def initialize(options = {})
    @options = options
  end

  def to_celsius
    @options.key?(:c) ? @options[:c] : (@options[:f] - 32) * 5.0 / 9
  end

  def to_fahrenheit
    @options.key?(:f) ? @options[:f] : (@options[:c] * 9.0 / 5) + 32
  end

  def self.in_fahrenheit(num)
    self.new(:f => num)
  end

  def self.in_celsius(c)
    Temperature.new(:c => c)
  end
end

class Celsius < Temperature
  def initialize(num, options = {})
    @options = options
    @options[:c] = num
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end
end

class Fahrenheit < Temperature
  def initialize(num, options = {})
    @options = options
    @options[:f] = num
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end
end
