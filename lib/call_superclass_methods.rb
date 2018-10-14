class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "name: #{name}, price: #{price}"
    end
end


class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
#        @name = name
#        @price = price
        super(name, price)
        @running_time = running_time
    end

    def to_s
        # superでスーパークラスのto_sメソッドを呼び出す
        "#{super}, running_time: #{running_time}"
    end
end


product = Product.new('A great movie', 2000)
p product.name
p product.price
p product.to_s
puts ""

dvd = DVD.new('A perfect movie', 3000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s
