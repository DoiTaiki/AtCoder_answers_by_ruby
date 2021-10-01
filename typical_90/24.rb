N, K = gets.chomp.split.map(&:to_i)
arr = []
2.times do
  arr << gets.chomp.split.map(&:to_i)
end

diff_sum = 0
arr.transpose.each do |column|
  diff_sum += (column[0] - column[1]).abs
end

remainder_operation = K - diff_sum
puts remainder_operation >= 0 && remainder_operation.even? ? "Yes" : "No"
