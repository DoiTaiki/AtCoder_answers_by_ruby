h, w = gets.chomp.split.map(&:to_i)

a = []
h.times do
  a << gets.chomp.split.map(&:to_i)
end

i = 0
line_sums = []
while i <= h - 1
  line_sums << a[i].inject(:+)
  i += 1
end

transposed_a = a.transpose

j = 0
column_sums = []
while j <= w - 1
  column_sums << transposed_a[j].inject(:+)
  j += 1
end

line = 0
while line <= h - 1
  line_sum = line_sums[line]
  column = 0
  output_line = []
  while column <= w - 1
    output_line << line_sum + column_sums[column] - a[line][column]
    column += 1
  end
  puts output_line.join(" ")
  line += 1
end
