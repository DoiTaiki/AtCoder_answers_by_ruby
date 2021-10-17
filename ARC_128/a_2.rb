N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

v = Array.new(0, N)
(1..N).each do |i|
  max_index = A.index{|e| e.max}
  min_index = A[max_index..-1].index{|e| e.min}
  
end

puts v.join ' '
