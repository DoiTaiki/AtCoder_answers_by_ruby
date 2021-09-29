N, Y = gets.chomp.split.map(&:to_i)

(0..N).each do |i|
  (0..N-i).each do |j|
    k = N - i - j
  	if 10000 * i + 5000 * j + 1000 * k == Y
      puts "#{i} #{j} #{k}"
      return
    end
  end
end

puts "-1 -1 -1"
