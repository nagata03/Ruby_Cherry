module Taggable
  def price_tag
    # priceメソッドはinclude先で定義されている前提
    "#{self.price}円"  # selfには「include先のクラスのインスタンス」が入る
  end
end

class Product
  include Taggable

  def price
    1000
  end
end

product = Product.new
p product.price_tag
