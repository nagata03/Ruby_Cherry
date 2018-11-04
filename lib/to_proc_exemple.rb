split_proc = :split.to_proc
p split_proc

p split_proc.call('a-b-c-d e')

p split_proc.call('a-b-c-d e', '-')

p split_proc.call('a-b-c-d e', '-', 3)

# これで以下のようにかけることに説明がつく
p ['Java', 'Ruby', 'Go'].map(&:upcase)
