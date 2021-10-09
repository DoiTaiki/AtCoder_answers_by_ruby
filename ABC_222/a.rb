n = gets.chomp.split('').map(&:to_i)
N = 4 - n.length
N.times do
  n.unshift 0
end

puts n.join ''
