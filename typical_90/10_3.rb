N = gets.chomp.to_i
sums = []
sums_1 = 0
sums_2 = 0
N.times do
  c, p = gets.chomp.split.map(&:to_i)
  if c == 1
    sums_1 += p
  else
    sums_2 += p
  end
  sums << [sums_1, sums_2]
end

Q = gets.chomp.to_i
Q.times do
  l, r = gets.chomp.split.map(&:to_i)
  if l == 1
    puts "#{sums[r-1][0]} #{sums[r-1][1]}"
  else
    puts "#{sums[r-1][0] - sums[l-2][0]} #{sums[r-1][1] - sums[l-2][1]}"
  end
end
