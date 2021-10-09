N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

result = 1
(0..N-1).each do |i|
  result *= b[i] - a[i] + 1
end

puts result % 998244353
