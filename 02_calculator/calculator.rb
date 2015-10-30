def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
    if array.any?
      array.inject do |sum, x|
        sum + x
      end
    else
      return 0
    end
end

def multi(x, y)
  x * y
end

def multi_several(array)
  array.inject do |multi, x|
    multi * x
  end
end

def factorial(x)
  x == 0 ? 1 : x*factorial(x-1)
end
