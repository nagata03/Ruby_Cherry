puts "-----（break）"
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
    puts n
    break if n == 5
end

ret =
    while true
        break
    end
p ret

ret =
    while true
        break 123
    end
p ret

fruits = ['apple', 'banana', 'cherry', 'dryfruits', 'egg']
numbers = [1, 2, 3, 4, 5]
fruits.each do |fruit|
    # 配列の数字をランダムに入れ替え、5が出たらbreakする
    numbers.shuffle.each do |n|
        p "#{fruit}, #{n}"
        # numbersのループは脱出するが、fruitsのループは継続する
        break if n == 5
    end
end
puts ""


puts "-----（catch＆throwによる大域脱出）"
fruits = ['apple', 'banana', 'cherry', 'dryfruits', 'egg']
numbers = [1, 2, 3, 4, 5]
ret =
catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            p "#{fruit}, #{n}"
            # 'cherry'と5の組み合わせの場合はループを抜ける
            if fruit == 'cherry' && n == 5
                throw :done, 123
            end
        end
    end
end
p ret
puts ""


puts "-----（nextで繰り返しの中断＆次の繰り返し）"
numbers = [1, 2, 3, 4, 5, 6]
numbers.each do |n|
    next if n.odd?
    p n
end
puts ""

numbers = [1, 2, 3, 4, 5, 6]
i = 0
while i < numbers.size
    n = numbers[i]
    i += 1
    next if n.even?
    p n
end
puts ""

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
    numbers.each do |number|
        next if number.even?
        p "#{fruit}, #{number}"
    end
end
puts ""


puts "-----（redoで繰り返し処理の\"その回の\"やり直し）"
foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
    print "#{food}は好きですか？ => "
    answer = ['はい', 'いいえ'].sample
    puts answer
    redo unless answer == 'はい'
end
puts ""

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
    print "#{food}は好きですか？ => "
    answer = 'いいえ'
    puts answer
    count += 1
    redo if answer != 'はい' && count < 2
    count = 0
end
puts ""
