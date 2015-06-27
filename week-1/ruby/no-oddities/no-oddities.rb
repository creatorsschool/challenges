def no_odds(values)
  values.select do |value|
    value.even?
  end
end

p no_odds([1,2,3,4,5])
