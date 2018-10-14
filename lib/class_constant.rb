class Product
    # デフォルトの価格を定数として定義する
    DEFAULT_PRICE = 0

    attr_reader :name, :price

    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price
    end

    def self.default_price
        # クラスメソッドから定数を参照
        DEFAULT_PRICE
    end

    def default_price
        # インスタンスメソッドから定数を参照
        DEFAULT_PRICE
    end
end

puts "クラスメソッドで参照"
p Product.default_price
puts ""

product = Product.new('A free movie')
p product
puts "インスタンスメソッドで参照"
p product.default_price
