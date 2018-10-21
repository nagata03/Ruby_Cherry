retry_count = 0
begin
  puts '処理を開始します。'
  1 / 0
rescue => exception
  retry_count += 1
  if retry_count <= 3
    puts "例外が発生しました。retryします。（#{retry_count}回目)"
    retry
  else
    puts 'retry上限回数を超えました。'
  end
end
