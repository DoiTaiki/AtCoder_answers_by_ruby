s = gets.chomp.chars
t = gets.chomp.chars

if s == t
  puts "Yes"
else
  index_arr = []
  s.each_with_index do |c, i|
    if c != t[i]
      t[i], t[i+1] = t[i+1], t[i]
      puts s == t ? "Yes" : "No"
      break
    end
  end
end
