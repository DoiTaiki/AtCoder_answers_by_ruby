n = gets.chomp.to_i

full_names = []
i = 0
while i < n
  full_names << gets.chomp
  i += 1
end

puts full_names.count - full_names.uniq.count > 0 ? "Yes" : "No"
