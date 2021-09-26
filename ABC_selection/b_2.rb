A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

count = 0
i = 0
while i <= A
  j = 0
  while j <= B
    k = 0
    while k <= C
      count += 1 if 500 * i + 100 * j + 50 * k == X
      k += 1
    end
    j += 1
  end
  i += 1
end

puts count
