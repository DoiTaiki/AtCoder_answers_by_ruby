A, B, C = gets.chomp.split.map(&:to_i)
length = A.gcd(B).gcd(C)

puts A/length + B/length + C/length - 3
