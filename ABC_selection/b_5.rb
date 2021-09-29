N = gets.chomp.to_i
d = []
N.times do
  d << gets.chomp.to_i
end

puts d.uniq.count
