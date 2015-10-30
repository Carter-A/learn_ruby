def echo(input)
  return input
end

def shout(input)
  return input.upcase
end

def repeat(string, num = 2)
  output = []
  while num > 0
    output.push(string)
    num -= 1
  end
  return output.join(' ')
end

def start_of_word(string, num = 1)
  return string.split(//).values_at(0..num-1).join()
end

def first_word(string)
  return string.split(' ')[0]
end

def titleize(string)
  string.capitalize!
  words_no_cap = ['and', 'over', 'the', 'to']
  output = string.split(' ').map {|word|
    if words_no_cap.include?(word)
      word
    else
      word.capitalize
    end
  }.join(' ')
  return output
end

repeat("hello", 3)
