numbers = [1, 2 ,3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
p new_numbers


numbers = [1, 2 ,3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
p new_numbers


numbers = [1, 2 ,3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
odd_numbers = numbers.select { |n| n.odd? }
p even_numbers
p odd_numbers


numbers = [1, 2 ,3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three


numbers = [1, 2 ,3, 4]
sum = numbers.inject(0) { |result, n| result + n }
p sum


p ['ruby', 'java', 'go'].map { |s| s.upcase }
p ['ruby', 'java', 'go'].map(&:upcase)


p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
p [1, 2, 3, 4, 5, 6].select(&:odd?)
