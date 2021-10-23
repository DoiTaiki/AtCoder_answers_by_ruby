N = gets.chomp.to_i
coordinates = []
N.times do
  coordinates << gets.chomp.split.map(&:to_i)
end

cnt = 0
coordinates.combination(3).each do |three_coordinates|
  cnt += 1 if (three_coordinates[2][1] - three_coordinates[0][1]) * (three_coordinates[1][0] - three_coordinates[0][0]) != (three_coordinates[1][1] - three_coordinates[0][1]) * (three_coordinates[2][0] - three_coordinates[0][0])
end

puts cnt
