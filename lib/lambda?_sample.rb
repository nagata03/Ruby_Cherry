add_lambda = lambda { |a, b| a + b }
p Proc.new(&add_lambda).lambda?
