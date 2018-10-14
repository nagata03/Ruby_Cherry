class User
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def hello
        # selfなしでnameメソッドを呼ぶ
        "Hello, I am #{name}."
    end

    def hi
        # self付きでnameメソッドを呼ぶ
        "Hi, I am #{self.name}."
    end

    def my_name
        # 直接インスタンス変数の@nameにアクセスする
        "My name is #{@name}"
    end

    def rename_to_Java
        # selfなしでname=メソッドを呼ぶ（？）
        name = 'Java'
    end

    def rename_to_Go
        self.name = 'Go'
    end

    def rename_to_Scala
        @name = 'Scala'
    end
end

user = User.new('Python')
p user.hello
p user.hi
p user.my_name
puts ""

user.rename_to_Java # user.nameはrenameできていない
p user.name
user.rename_to_Go
p user.name
user.rename_to_Scala
p user.name
puts ""
puts "メソッド内でセッターメソッドを呼ぶときはself.を必ずつけること！"
