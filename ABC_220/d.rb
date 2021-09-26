N = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)

def operate_f(arr)
  value = (arr[0] + arr[1]) % 10
  return arr.shift(2).unshift(value)
end

def operate_g(arr)
  value = (arr[0] * arr[1]) % 10
  return arr.shift(2).unshift(value)
end
