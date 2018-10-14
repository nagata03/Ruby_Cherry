# ログ出力用のメソッドを提供するモジュール
module Loggable
    private

    def log(text)
        puts "[LOG] #{text}"
    end
end


class Product
    include Loggable

    def title
        log('title is called.')
        'A great movie'
    end
end

class User
    include Loggable

    def name
        log 'name is called.'
        'Alice'
    end
end

product = Product.new
p product.title

user = User.new
p user.name

# インスタンスからprivateメソッドを呼び出そうとするとエラーとなる
#p product.log 'public?'

# Productクラスがincludeしているmoduleを確認
p Product.included_modules

# Productクラスのインスタンスから、includeしているmoduleを確認
p product.class.included_modules
p product.is_a?(Loggable)