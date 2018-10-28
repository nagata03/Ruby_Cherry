# ブロック付きでオープンすると、メソッドの実行後に自動的にクロースずされる
File.open('sample.txt', 'w') do |file|
  file << 'Hello!'
  # わざと例外を発生
  1 / 0
end
