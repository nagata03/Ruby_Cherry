add_proc = Proc.new { |a, b| a + b }

p add_proc.call(1, 2)
p add_proc.yield(10, 20)
p add_proc.(100, 200)
p add_proc[1000, 2000]
p add_proc === [10000, 20000] # case文のwhen節でProcオブジェクトを使えるようにするために用意されている呼び出し方法
