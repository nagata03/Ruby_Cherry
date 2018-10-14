class User
    def initialize(name)
        @name = name
    end

    # これはクラスメソッド（self.をつける）
    def self.create_users(names)
        names.map do |name|
            User.new(name)
        end
    end

    # これはインスタンスメソッド
    def hello
        # @nameの値はインスタンスによって異なる
        "Hello, I am #{@name}."
    end
end

alice = User.new('Alice')
# インスタンスメソッドはインスタンス（オブジェクト）に対して呼び出す
p alice.hello

bob = User.new('Bob')
p bob.hello


names = ['Allen', 'Billy', 'Chen']
# クラスメソッドの呼び出し
users = User.create_users(names)
users.each { |user| p user.hello }  # user.helloはインスタンスメソッドの呼び出し
