N, P, Q = gets.chomp.split.map(&:to_i)
numbers = gets.chomp.split.map(&:to_i)

result = 0
numbers.combination(5).each do |select_numbers|
  result += 1 if select_numbers.inject(:*) % P == Q
end

puts result
