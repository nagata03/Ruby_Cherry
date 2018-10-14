alice = 'I am Alice.'
bob = 'I am Bob.'

# aliceオブジェクトにだけshuffleメソッドを定義する
def alice.shuffle
    chars.shuffle.join
end

p alice.shuffle
#p bob.shuffle


class User
end

# クラス構文の外部でクラスメソッド（特異メソッド）を定義する方法１
def User.hello
    'hello'
end

# クラス構文の外部でクラスメソッド（特異メソッド）を定義する方法２
class << User
    def hi
        'hi'
    end
end

p User.hello
p User.hi
