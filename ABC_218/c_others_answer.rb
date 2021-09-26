s = Array.new
t = Array.new

n = gets.to_i
s = n.times.map{gets.chomp.chars}
t = n.times.map{gets.chomp.chars}

# 要素が全て"."である最も外側の行・列を削除
def minify(arr)
  4.times do
    arr.shift while arr[0].all?(".")
    # 90左回転
    arr = arr.transpose.reverse
  end
  return arr
end

s = minify(s)
t = minify(t)

if s == t
  puts "Yes"
  exit
end

3.times do
  s = s.transpose.reverse
  if s == t
    puts "Yes"
    exit
  end
end
puts "No"
