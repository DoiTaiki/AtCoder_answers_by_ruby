N, Y = gets.chomp.split.map(&:to_i)

i = 0
j = 0
while i <= N
  while j <= N - i
    k = N - i - j
    if 10000 * i + 5000 * j + 1000 * k == Y
      puts "#{i} #{j} #{k}"
      return
    end
    j += 1
  end
  i += 1
end

puts "-1 -1 -1"
