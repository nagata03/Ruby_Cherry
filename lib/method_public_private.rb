class User
    class << self
        private # クラスメソッドをprivateにしたい場合は「class << self」構文を使う

        def chao
            'Chao!'
        end
    end

    def self.bye
        'Bye!'
    end
    # 後からクラスメソッドをprivateに変更する（クラスメソッドをprivateにしたい場合は「class << self」構文を使わない場合）
    private_class_method :bye

    def hello
        "Hello, I am #{name}"   # privateメソッドを呼び出すときはself.なしで。
    end

    private

    def hi
        "Hi!"
    end

    def name
        'Alice'
    end
end


#p User.chao # privateメソッドをレシーバ指定で呼び出しているためエラーとなる
p User.bye  # privateメソッドをレシーバ指定で呼び出しているためエラーとなる

user = User.new
puts "publicメソッドをコール"
p user.hello
puts ""

#puts "privateメソッドをコール"
#p user.hi   # エラーになる。because privateメソッドはレシーバを指定して呼び出すことができない
#puts ""


class Product
    private

    def name
        'A great movie'
    end
end

class DVD < Product
    def to_s
        # nameはスーパークラスのprivateメソッド
        "name: #{name}"
    end
end

dvd = DVD.new
# サブクラスからスーパークラスのprivateメソッドを呼び出せる
p dvd.to_s
