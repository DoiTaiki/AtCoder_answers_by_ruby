N, A, B = gets.chomp.split.map(&:to_i)

sum = 0
(1..N).each do |i|
  sum_i = i.to_s.chars.map(&:to_i).inject(:+)
  sum += i if (A..B).cover?(sum_i)
end

puts sum
