H, W = gets.chomp.split.map(&:to_i)
arr = []
H.times do
  arr << gets.chomp.split.map(&:to_i)
end

line_sums = []
arr.each do |line|
  line_sums << line.inject(:+)
end

column_sums = []
arr.transpose.each do |column|
  column_sums << column.inject(:+)
end

(0..H-1).each do |i|
  each_sums = []
  (0..W-1).each do |j|
    each_sums << line_sums[i] + column_sums[j] - arr[i][j]
  end
  puts each_sums.join ' '
end
