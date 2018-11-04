def greeting(&block)
  puts 'おはよう'
  text =
    if block.arity == 1 # ブロック引数の個数を確認
      yield 'こんにちは'
    elsif block.arity == 2
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

greeting do |text1, text2|
  text1 * 2 + text2 * 2
end

