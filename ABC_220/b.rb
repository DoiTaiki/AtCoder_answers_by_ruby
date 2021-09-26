K = gets.chomp.to_i
A, B = gets.chomp.split

def convert_to_decimal(number, base_number)
  arr = number.chars.reverse.map(&:to_i)
  sum = 0
  arr.each_with_index do |n, i|
    sum += n * (base_number ** i)
  end
  return sum
end

puts convert_to_decimal(A, K) * convert_to_decimal(B, K)
