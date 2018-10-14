class Product
    # クラス変数
    @@name = 'Product'

    def self.name
        # クラス変数
        @@name
    end

    def initialize(name)
        # クラス変数
        @@name = name
    end

    def name
        # クラス変数
        @@name
    end
end


class DVD < Product
    @@name = 'DVD'

    def self.name
        @@name
    end

    def upcase_name
        @@name.upcase
    end
end


# DVDクラスを定義したタイミングで@@nameが'DVD'に変更される
p Product.name
p DVD.name
puts ""

product = Product.new('A great movie')
p product.name
puts ""

p Product.name
p DVD.name
puts ""

dvd = DVD.new('A perfect movie')
p dvd.name
p dvd.upcase_name
puts ""

p product.name
p Product.name
p DVD.name
