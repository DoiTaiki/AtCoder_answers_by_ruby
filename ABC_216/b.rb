n = gets.chomp.to_i
s = []
t = []

n.times do
  full_name = gets.chomp.split
  s << full_name[0]
  t << full_name[1]
end

s.uniq.each_with_index do |sample, i|
  s index { |x, index| x == sample }
end

i = 0
while i <= n - 1
  if j = s.index.with_index { |x, index| x == s[i] && index != i }
    break if t[i] == t[j]
  end
  i += 1
end

answer = i == n ? "No" : "Yes"
puts answer
