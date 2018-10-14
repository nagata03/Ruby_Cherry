a = [1, 2, 3, 4, 5]
p a[1, 3]

p a.values_at(0, 2, 4)

p a[a.size - 1]
p a[a.length - 1]

p a[-1]
p a[-2]

p a[-3, 2]

p a.last
p a.last(2)

p a.first
p a.first(3)


a[-3] = -10
p a


a[2, 3] = 100
p a


a = []
p a.push(101)
p a.push(102, 103)

p a.delete(102)
p a

p a.delete(105)


a = [1]
b = [12, 13]

a.concat(b) # 破壊的
p a
p b

a = [1]
b = [12, 13]

puts "-----"
p a + b # 非破壊的
p a
p b


puts "-----"
a = [1, 2, 3]
b = [3, 4, 5]
p a | b
p a - b
p a & b


puts "-----"
require 'set'
a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p a | b
p a - b
p a & b


puts "-----（splat展開）"
a = []
b = [2, 3]
a.push(1)
p a.push(*b)    # splat展開


puts "-----"
def greeting(*names)
    puts "#{names.join('と')}、こんにちは！"
end
greeting('田中さん')
greeting('田中さん', '鈴木さん')
greeting('田中さん', '鈴木さん', '佐藤さん')


puts "-----"
p [1, 2, 3] == [1, 2, 3]
p [1, 2, 3] == [1, 3, 2]


puts "-----（%w記法で文字列の配列を作る）"
p %w(apple banana cherry)
p %w'big\ apple small\ melon mango'
prefix = 'This is'
p %W(#{prefix}\ an\ apple small\nmelon orange)
p %w(#{prefix}\ an\ apple small\nmelon orange)
puts ""


puts "-----（文字列を配列に変換）"
p 'Ruby'.chars
p 'Ruby,Java,Go,Swift'.split(',')
puts ""


puts "-----（配列に初期値を設定）"
a = Array.new(5, 0)
p a

a = Array.new(10) { |n| n % 3 + 1 } # ブロック引数(n)には配列の添字が入る
p a

a = Array.new(5, 'default')
p a
str = a[0]
p str
str.upcase!
p a

a = Array.new(5) { 'default' }
p a
str = a[0]
p str
str.upcase!
p a

puts ""
