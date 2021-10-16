N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

v = []
i = 1
while i < N
  if A[i-1] > A[i]
    2.times do
      v << 1
    end
    i += 1
  else
    v << 0
  end
  i += 1
end

v << 0 if v.length == N - 1

puts v.join ' '
