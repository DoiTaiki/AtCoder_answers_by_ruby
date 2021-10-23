N = gets.chomp.to_i
coordinates = []
N.times do
  coordinates << gets.chomp.split.map(&:to_i)
end

cnt = 0
coordinates.combination(3).each do |a, b, c|
  cnt += 1 if (a[0] - c[0]) * (b[1] - c[1]) - (b[0] - c[0]) * (a[1] - c[1]) != 0
end

puts cnt
