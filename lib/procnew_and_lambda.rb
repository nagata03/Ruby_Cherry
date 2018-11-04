add_proc = Proc.new { |a, b| a + b }
p add_proc.call(10, 20)

add_lambda = ->(a, b) { a + b }
p add_lambda.call(30, 40)

puts '*' * 30

add_proc = Proc.new { |a, b| a.to_i + b.to_i }
p add_proc.call(10)
p add_proc.call(100, 200, 300)

add_lambda = ->(a, b) { a.to_i + b.to_i }
#p add_lambda.call(30)
#p add_lambda.call(40, 50, 60)

puts '*' * 30

p add_proc.lambda?
p add_lambda.lambda?
