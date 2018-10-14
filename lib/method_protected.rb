class User
    attr_reader :name

    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    # 自分の体重がother_userの体重より重い場合はtrue
    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    protected

    # protectedメソッドなので、同じクラスかサブクラスであればレシーバ付きで呼び出せる
    def weight
        @weight
    end
end


alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
p bob.heavier_than?(alice)
p alice.heavier_than?(bob)
p alice.weight  # エラーになる。protectedメソッドはクラス外（この場合はインスタンス）からは呼び出せない
