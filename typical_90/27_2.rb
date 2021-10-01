N = gets.chomp.to_i
h = {}
(1..N).each do |i|
  str = gets.chomp
  unless h[str]
    h[str] = true
    puts i
  end
end
