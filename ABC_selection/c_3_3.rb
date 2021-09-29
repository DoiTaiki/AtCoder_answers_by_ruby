N = gets.chomp.to_i

t = 0
x = 0
y = 0
N.times do
  t_next, x_next, y_next = gets.chomp.split.map(&:to_i)
  dt = t_next - t
  dx = (x_next - x).abs
  dy = (y_next - y).abs
  if dt < dx + dy || (dt - dx - dy).odd?
    puts "No"
    return
  end
  t = t_next
  x = x_next
  y = y_next
end

puts "Yes"
