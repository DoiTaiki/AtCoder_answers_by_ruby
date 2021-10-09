N, P = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
cnt = 0
arr.each do |a|
  cnt += 1 if a < P
end

puts cnt
