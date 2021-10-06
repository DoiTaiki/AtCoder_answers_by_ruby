H, W = gets.chomp.split.map(&:to_i)
if H == 1 || W == 1
  puts H * W
else
  puts ((H + 1) / 2) * ((W + 1) / 2)
end
