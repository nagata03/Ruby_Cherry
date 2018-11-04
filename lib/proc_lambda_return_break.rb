def proc_return
  f = Proc.new { |n| return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  f = ->(n) { return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

p proc_return
p lambda_return
puts

#def proc_break
#  f = Proc.new { |n| break n * 10 }
#  ret = [1, 2, 3].map(&f)
#  "ret: #{ret}"
#end

def lambda_break
  f = ->(n) { break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

#p proc_break
p lambda_break
