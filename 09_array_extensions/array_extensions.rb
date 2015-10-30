class Array
  def initialize
  end

  def sum
    total = 0
    self.each do |x|
      total += x
    end
    return total
  end

  def square
    self.map do|x|
      x**2
    end
  end

  def square!
    self.map! do |x|
      x*x
    end
  end
end
