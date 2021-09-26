X = gets.chomp
N = gets.to_i
ALP = ("a".."z").to_a
result_list = []
convert_list = []

# X = eabdc...なら、eab => 0, 1, 2番目なので、abcに変換
def reconvert_alp(str)
    str.length.times do |i|
        str[i] = X[ALP.index(str[i])]
    end
    return str
end

# abc => eabに戻す
def convert_alp(str)
    str.length.times do |i|
        str[i] = ALP[X.index(str[i])]
    end
    return str
end

N.times do
    str = gets.chomp
    result_list << convert_alp(str)
end

result_list.sort!

result_list.each do |str|
    str = reconvert_alp(str)
end

puts result_list
