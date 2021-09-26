N = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
X = gets.chomp.to_i

arr_sum = arr.inject(:+)

quotient = X / arr_sum
remainder = X % arr_sum
count_1 = quotient * arr.count
partial_sum = 0
count_2 = arr.each_with_index do |n, i|
  partial_sum += n
  break i if remainder < partial_sum
end

puts count_1 + count_2 + 1
