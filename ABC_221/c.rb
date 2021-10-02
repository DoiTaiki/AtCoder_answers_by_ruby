n = gets.chomp.chars.sort.reverse

odd_str = []
even_str = []
n.each_with_index do |num, i|
  if (i + 1).odd?
    odd_str << n[i]
  else
    even_str << n[i]
  end
end

odd_str[0], even_str[0] = even_str[0], odd_str[0]

puts odd_str.join.to_i * even_str.join.to_i
