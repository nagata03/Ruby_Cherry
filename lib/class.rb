# Userクラスを定義する
class User
    attr_reader :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    # 氏名を作成するメソッド
    def create_full_name
        "#{first_name} #{last_name}"
    end
end


# ユーザのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)



# ユーザのデータを表示する
users.each do |user|
    puts "氏名：#{user.create_full_name}、年齢：#{user.age}"
end
puts ""

puts "-----（attr_accessorメソッドを使うと、いわゆるゲッター・セッターが自動的に定義される"
class User2
    # @nameを読み書きするメソッドが自動的に定義される
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

user = User2.new('Alice')
p user.name
user.name = 'Bob'
p user.name
