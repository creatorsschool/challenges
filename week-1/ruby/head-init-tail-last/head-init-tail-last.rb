def head(array)
  array.first
end

def tail(array)
  array.drop(1)
end

def init(array)
  array[0...-1]
end

def init2(array)
  array.take(array.size - 1)
end

def last(array)
  array.last
end

def last2(array)
  array[-1]
end
