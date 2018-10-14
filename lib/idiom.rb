puts "-----（条件分岐で変数に代入 / &.演算子）"
# 引数で与えられた国名に応じて通過を返す（該当する通過がなければnilを返す）
def find_currency(country)
    currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
    currencies[country]
end

# 指定された国の通過を大文字にして返す
def show_currency(country)
##    currency = find_currency(country)
##    # nil出ないことをチェック（nilだとupcaseが呼び出せないため）
##    if currency
#    if currency = find_currency(country)    # 値が取得できれば真、できなければ偽
#        currency.upcase
#    end
    currency = find_currency(country)
    currency&.upcase
end

p show_currency(:japan)
p show_currency(:brazil)
puts ""


puts "-----（||=を使った自己代入）"
limit = nil
limit ||= 10
p limit

limit = 20
limit ||= 10
p limit
puts ""


puts "-----（!!を使った真偽値の型変換）"
p !true
p !!true
p !10
p !!10
p !nil
p !!nil
puts ""
