N = gets.chomp.to_i
plan = []
N.times do
  plan << gets.chomp.split.map(&:to_i)
end

d_plan = []
d_plan << plan[0]
if plan.length >= 2
  (0..N-2).each do |i|
    dt = plan[i+1][0] - plan[i][0]
    dx = plan[i+1][1] - plan[i][1]
    dy = plan[i+1][2] - plan[i][2]
    d_plan << [dt, dx, dy]
  end
end

puts d_plan.any?{ |arr| arr[0] < arr[1] + arr[2] || (arr[0] - arr[1] - arr[2]).odd? } ? "No" : "Yes"
