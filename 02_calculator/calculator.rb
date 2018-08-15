def add(number_1, number_2)
  number_1 + number_2
end

def subtract(number_1, number_2)
  number_1 - number_2
end

def sum(arr)
  sum = 0
  arr.each do |n|
    sum += n
  end
  sum
end

def multiply(*numbers)
  result = 1
  numbers.each do |n|
    result *= n
  end
  result
end

def power(number, power)
  number**power
end

def factorial(number)
  result = 1
  return result if number <= 1
  (1..number).each do |n|
    result *= n
  end
  result
end
