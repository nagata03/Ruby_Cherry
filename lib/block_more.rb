puts "-----（each_with_indexメソッド）"
fruits = ['apple', 'banana', 'cherry']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
puts ""


puts "-----（mapメソッドとwith_indexメソッドの組み合わせ）"
fruits = ['apple', 'banana', 'cherry']
p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }
puts ""


puts "-----（deleteメソッドとwith_indexメソッドの組み合わせ）"
fruits = ['apple', 'banana', 'cherry']
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
puts ""


puts "-----（添字を0以外から付与することも可能）"
fruits = ['apple', 'banana', 'cherry']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
p fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
puts ""


puts "-----（配列がブロック引数に渡される場合）"
dimentions = [
    [10, 20],
    [30, 40],
    [50, 60]
]
areas = []
dimentions.each do |dimention|
    areas << dimention[0] * dimention[1]
end
p areas

areas = []
dimentions.each { |width, heights| areas << width * heights }
p areas

areas = []
dimentions.each_with_index do |(width, heights), i|
    puts "width:#{width}, heights:#{heights}, i:#{i}"
end
puts ""


puts "-----（ファイルへの書き込み処理でブロックを使用）"
File.open("./output/block_more_sample.txt", "w") do |file|
    file.puts("１行目のテキスト。")
    file.puts("２行目のテキスト。")
    file.puts("３行目のテキスト。")
end
puts ""


puts "-----（do...endと{}の結合度の違い）"
a = [1, 2, 3]
p a.delete(100)

a.delete(100) do
    puts 'NG'
end

a.delete 100 do
    puts 'NG'
end

a.delete(100) { puts 'NG' }
puts ""


puts "-----（ブロックの後ろに別のメソッドを書く）"
names = ['田中', '鈴木', '佐藤']
p names.map { |name| "#{name}さん" }.join('と')

names.map do |name|
    "#{name}さん"
end.join('と')
puts ""


puts "-----（さまざまな繰り返し処理）"
sum = 0
5.times { |n| sum += n }
p sum
puts ""


puts "-----（uptoとdownto）"
a = []
10.upto(15) { |n| a << n }
p a

a = []
14.downto(10) { |n| a << n }
p a
puts ""


puts "-----（step）"
a = []
5.step(15, 2) { |n| a << n }
p a

sum = 0
100.step(10, -10) { |n| sum += n }
p sum
puts ""


puts "-----（while文）"
a = []
while a.size < 5
    a << 1
end
p a

a = []
while a.size < 10 do a << 1 end
p a

a = []
a << 1 while a.size < 10
p a

a = []
# begin...endで囲むとどんな条件でも最低１回は実行される
begin
    a << 1
end while false
p a
puts ""


puts "-----（until文）"
a = [1, 2, 3, 4, 5]
until a.size <= 2
    a.delete_at(-1)
end
p a

a = [1, 2, 3, 4, 5]
a.delete_at(-1) until a.size <=2
p a
puts ""


puts "-----（for文）"
numbers = [1, 2, 3, 4]
sum = 0
for number in numbers
    sum += number
end
p sum

sum = 0
for number in numbers do sum += number end
p sum

sum = 0
numbers.each { |n| sum += n }
p sum

sum = 0
numbers.each do |n|
    value = n.even? ? n * 10 : n
    sum += value
end
p sum
#p n
#p value

sum = 0
for n in numbers
    value = n.even? ? n * 10 : n
    sum += value
end
p sum
p n
p value
puts ""


puts "-----（loop文）"
numbers = [1, 2, 3, 4, 5]
loop do
    n = numbers.sample  # sampleメソッドでランダムに要素を１つ取得する
    p n
    break if n == 5
end
puts ""
