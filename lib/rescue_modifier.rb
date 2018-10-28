require "date"

def to_date(string)
  Date.parse(string) rescue nil # rescueを修飾子として使う場合。捕捉する例外クラスは指定できない。
end

p to_date('2018-10-28')
p to_date(1111)
