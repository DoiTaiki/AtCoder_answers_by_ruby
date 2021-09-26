s = gets
n = gets.to_i
a = (1..n).map{gets.chomp}
# tr(パターン文字列, replace文字列)でパターン文字列に含まれる文字列を検索し、replace文字列で置換
a = a.sort_by{|x|x.tr(s,"a-z")}
puts a*"\n"
