class Product
    DEFAULT_PRICE = 0
    # 定数を再代入する
    DEFAULT_PRICE = 3000

#    SOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze
    SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
end


p Product::DEFAULT_PRICE    # 再代入後の値が返る
Product::DEFAULT_PRICE = 10000  # クラス外から再代入する
p Product::DEFAULT_PRICE    # 再代入後の値が返る

p Product::SOME_NAMES[0].upcase!

# 再代入を防ぐにはクラスを凍結する
Product.freeze
# 凍結すると再代入できなくなる
Product::DEFAULT_PRICE = 10000  # クラス外から再代入する
