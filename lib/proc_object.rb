hello_proc = Proc.new { 'Hello' }
p hello_proc.call

add_proc = Proc.new { |a = 0, b = 0| a + b }
p add_proc.call(10, 20)
p add_proc.call

sub_proc = proc { |a, b| a - b }  # Kernelモジュールのprocメソッドを使ってもよい
p sub_proc.call(20, 5)

puts '*' * 30

def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)

puts '*' * 30

def greeting(proc1, proc2, proc3)
  puts proc1.call('おはよう')
  puts proc2.call('こんにちは')
  puts proc3.call('こんばんは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?"}
greeting(shuffle_proc, repeat_proc, question_proc)
