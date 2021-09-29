N = gets.chomp.to_i
plan = []
N.times do
  plan << gets.chomp.split.map(&:to_i)
end

dt, dx, dy = plan[0]
if plan.length >= 2
  (0..N-2).each do |i|
    if (dt < dx + dy) || ((dt - dx - dy).odd?)
      puts "No"
      return
    end

    dt = plan[i+1][0] - plan[i][0]
    dx = plan[i+1][1] - plan[i][1]
    dy = plan[i+1][2] - plan[i][2]
  end
else
  if (dt < dx + dy) || ((dt - dx - dy).odd?)
    puts "No"
    return
  end
end

puts "Yes"
