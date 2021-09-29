N, Y = gets.chomp.split.map(&:to_i)

result = ""
(0..N).each do |i|
  (0..N-i).each do |j|
    k = N - i - j
    result = "#{i} #{j} #{k}" if 10000 * i + 5000 * j + 1000 * k == Y
  end
end

puts result.empty? ? "-1 -1 -1" : result
