#sum_to

def sum_to(n)
  return nil if n < 1
  return 1 if n == 1
  n + sum_to(n - 1)
end

#add_numbers

def add_numbers(nums_array)
  return nil if nums_array.empty?
  return nums_array.first if nums_array.count == 1
  nums_array.first + add_numbers(nums_array[1..-1])
end

#gamma_function

def gamma_fnc(n)
  return nil if n < 1
  return 1 if n == 1
  (n - 1) * gamma_fnc(n - 1)
end

#ice cream shop

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if favorite == flavors.first
  ice_cream_shop(flavors[1..-1], favorite)
end

#reverse

def reverse(str)
  return str if str.length <= 1
  reverse(str[1..-1]) + str[0]
end

#range

def range(start, last)
  return [] if last < start
  return [start] if start == last
  result = []
  result << start
  result + range((start + 1), last)
end

#exponentiation

def exp1(b, n)
  return 1 if n == 0
  b * exp1(b, (n - 1))
end

def exp2(b, n)
  return 1 if n == 0
  return b if n == 1
  if n.even?
    even_result = exp2(b, n / 2)
    return even_result * even_result
  else
    odd_result = (exp2(b, (n - 1) / 2))
    return b * odd_result * odd_result
  end
end
