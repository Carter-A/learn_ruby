def reverser
  y = []
  yield.split(' ').each do |letter|
    x = letter.reverse
    y.push(x)
  end
  return y.join(' ')
end

def adder(x = 1)
  return yield + x
end

def repeater(n=1, &block)
  n.times &block
end
