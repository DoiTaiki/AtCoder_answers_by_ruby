h, w = gets.chomp.split.map(&:to_i)
a = []
h.times do
  a << gets.chomp.split.map(&:to_i)
end

i = 0
line_sum = []
column_sum = Array.new(w, 0)
while i = h - 1
  line_sum[i] = a[i].inject(:+)

  j = 0
  while j = w - 1
  	column_sum[j] += a[i][j]
    j += 1
  end

  i += 1
end

line = 0
column = 0
while line = h - 1
  b_line = []
  while column = w - 1
  	b_line << line_sum[line] + column_sum[column] - a[line][column]
    column += 1
  end
  puts b_line.join(" ")
  line += 1
end
