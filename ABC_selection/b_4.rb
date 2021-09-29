N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.sort!.reverse!

sum_alice = 0
sum_bob = 0
i = 0
while i < N
  sum_alice += a[i]
  sum_bob += a[i+1] if a[i+1]
  i += 2
end

puts sum_alice - sum_bob
