N = gets.chomp.to_i
arr = []
(1..N).each do |i|
  str = gets.chomp.chars
  if arr.all?{|e| e.length != str.length || e != str}
    arr << str
    puts i
  end
end
