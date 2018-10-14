numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |number|
    sum += number
end

puts sum


a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
    n.odd?
end

p a


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |number|
    after_number = number.even? ? number *= 10 : number
    sum += after_number
end

p sum


numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum
