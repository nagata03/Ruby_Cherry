class Product
    attr_reader :code, :name

    def initialize(code, name)
        @code = code
        @name = name
    end

    def ==(other)
        if other.is_a?(Product)
            @code == other.code
        else
            false
        end
    end
end


a = Product.new('A-001', 'A great movie')
b = Product.new('B-001', 'A perfect movie')
c = Product.new('A-001', 'A great movie')

p a == b
p a == c

p a.==(b)
p a.==(c)
