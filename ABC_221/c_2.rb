n = gets.chomp.chars.sort.reverse

num_1 = ""
num_2 = ""
n.each do |num|
  num_1.to_i <= num_2.to_i ? num_1 += num : num_2 += num
end

puts num_1.to_i * num_2.to_i
