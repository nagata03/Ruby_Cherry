begin
    raise   # raiseの引数に例外を書かない場合、RuntimeErrorとなる
rescue => e
    p e
end

puts '終了'
