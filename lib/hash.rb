puts "-----（任意のキーワードを受け付ける**引数）"
def buy_burger(menu, drink: true, potato: true, **others)
    print "othersは => ",others
end

buy_burger('fish', potato: false, salad: true, chicken: false)
puts ""


puts "-----（hashの初期値）"
h = Hash.new { 'hello!!' }
a = h[:foo]
b = h[:bar]
p a
p b
p a.equal?(b)
puts ""

h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo]
h[:bar]
p h
puts ""
