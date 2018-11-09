def judge(array)
#  big = Proc.new do |array|
#    array.sum >= 10
#  end
#  small = Proc.new do |array|
#    array.sum < 10
#  end
  big = ->(array) { array.sum >= 10 }
  small = ->(array) { array.sum < 10 }

  case array
  when big
    '合計すると10以上です'
  when small
    '合計しても10未満です'
  end
end

p judge([1, 2])
p judge([5, 6])
