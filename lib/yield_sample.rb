def greeting
  puts 'おはよう'
  yield if block_given? # yieldによって、greetingメソッドを読み出す際に定義したブロックを呼び出す
  puts 'こんばんは'
end

greeting do
  puts 'こんにちは'
end

greeting

puts '*' * 30

def greeting2
  puts 'おはよう'
  if block_given?
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end

greeting2 do |text|
  text * 2
end

greeting2

puts '*' * 30

def greeting3(&block)
  puts 'おはよう'
  unless block.nil?
    text = block.call('こんにちは')
    puts text
  end
  puts 'こんばんは'
end

greeting3 do |text|
  text * 2
end

greeting3
