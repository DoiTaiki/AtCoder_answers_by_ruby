N = gets.chomp.to_i
a = gets.chomp.split.reverse.map(&:to_i)
b = gets.chomp.split.reverse.map(&:to_i)
max = b.max
min = a.min

result = 1
(0..N-1).each do |i|
  (0..(b[i]-a[i]+1)).each do |n|
    max = b[i]
    min = (a[i+1] + n) > a[i] ? (a[i+1] + n) : a[i]
    result *= max - min + 1
  end
end

puts result % 998244353
