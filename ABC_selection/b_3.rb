n, a, b = gets.chomp.split

sum = 0
(1..n).each do |i|
  sum += i if (a.to_i..b.to_i).cover? i.to_s.chars.map(&:to_i).inject(:+)
end

puts arr
