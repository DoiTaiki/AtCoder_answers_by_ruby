N = gets.chomp.to_i
login_periods = []
N.times do
  login_periods << gets.chomp.split.map(&:to_i)
end

transposed_login_periods = login_periods.transpose
d = Array.new(N, 0)
(transposed_login_periods[0].min..(transposed_login_periods[0] + transposed_login_periods[1] - 1).max).each do |day|
  user_count = 0
  login_periods.each do |login_period|
    user_count += 1 if (login_period[0]..login_period[1]).cover? day
  end
  if user_count != 0
    d[user_count-1] += 1
  end
end

puts d.join ' '
