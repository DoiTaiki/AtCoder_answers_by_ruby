A, B, C = gets.chomp.split.map(&:to_i)

i = 1
result = while C * i <= B
  break C * i if (A..B).cover? C * i
  i += 1
end

if C * i <= B
  puts result
else
  puts -1
end
