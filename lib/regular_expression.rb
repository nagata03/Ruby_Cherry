puts "-----（キャプチャ）"
text = '私の誕生日は1978年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m
p m[0]
p m[1]
p m[2]
p m[3]
p m[1..2]
puts ""

m = text.match(/(\d+)年(\d+)月(\d+)日/)
p m
p m[0]
p m[1]
p m[2]
p m[3]
p m[1..2]
puts ""


puts "-----（キャプチャの結果に名前をつける）"
text = '私の誕生日は1978年7月17日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m
# 名前を指定するときはシンボルで！
p m[:year]
p m[:month]
p m[:day]
# 文字列でも指定できる！
p m['year']
# 連番でも指定できる！
p m[1]
puts ""

text = '私の誕生日は1978年7月17日です。'
# 左辺に正規表現リテラル、右辺に文字列を置いて=~演算子を使う。（左辺と右辺が逆の場合や正規表現リテラルを変数に代入した場合は不可）
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
    puts"#{year}/#{month}/#{day}"
end
puts ""


puts "-----（[], slice, slice!）"
text = '私の誕生日は1978年7月17日です。'
p text[/\d+年\d+月\d+日/]

# マッチする部分が複数ある場合は最初にマッチした文字列が返る
text ='123-4567 456-7890'
p text[/\d{3}-\d{4}/]

# キャプチャを使うと第２引数で何番目のキャプチャを取得するか指定できる。
text = '私の誕生日は1978年7月17日です。'
p text[/(\d+)年(\d+)月(\d+)日/]
p text[/(\d+)年(\d+)月(\d+)日/, 2]
# 名前付きキャプチャを使うと名前で指定もできる
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 'year']
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :month]
puts ""

text.slice!(/(\d+)年(\d+)月(\d+)日/)
p text
puts ""


puts "-----（split）"
# splitに正規表現を渡すと、マッチした文字列を区切り文字にして文字列を分解し、配列として返す。
text = '123,456-7890'
p text.split(',')
p text.split(/,|-/)
puts ""


puts "-----（gsub, gsub!）"
# 第１引数にマッチした文字列を第２引数の文字列で置き換える
text = '123,456-7890'
p text.gsub(',', ':')
p text.gsub(/,|-/, ':')
puts ""

text = '私の誕生日は1978年7月17日です。'
p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')
p text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '\k<year>/\k<month>/\k<day>')
puts ""

text = '123,456-7890'
# カンマはコロンに、ハイフンはスラッシュに置き換える。
hash = { ',' => ':', '-' => '/' }
p text.gsub(/,|-/, hash)
p text.gsub(/,|-/) { |matched| matched == ',' ? ':' : '/' }
puts ""


puts "-----（正規表現オブジェクトの作成方法）"
text = '123,456-7890'
pattern = Regexp.new('\d{3}-\d{4}')
p text.match(pattern)

text = '123,456-7890'
pattern = Regexp.new(',|-')
p text.gsub(pattern, ':')
p text.gsub(pattern) { |matched| matched == ',' ? ':' : '/' }
puts ""


puts "-----（case文で正規表現を使う）"
#text = '03-1234-5678'
#text = '2018/9/10'
text = '188-1098'
case text
when /^\d{3}-\d{4}$/
    puts '郵便番号です。'
when %r!^\d{4}/\d{1,2}/\d{1,2}$!
    puts '日付です。'
when %r{^\d+-\d+-\d+$}
    puts '電話番号です。'
end
puts ""


puts "-----（正規表現オブジェクト作成時のオプション）"
p 'HELLO' =~ /hello/i # iオプションは大文字と小文字を区別しない
p 'HELLO' =~ %r!hello!i
puts ""

pattern = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ pattern
puts ""

# mオプションを使うと、任意の文字を表すドット(.)が改行文字にもマッチするようになる
p "Hello\nBye" =~ /Hello.Bye/   # mオプションを使用しないときは不一致
p "Hello\nBye" =~ /Hello.BYE/im
# Regexp.newを使う場合は、Regexp::MULTILINEという定数を渡す
pattern = Regexp.new('Hello.BYE', Regexp::IGNORECASE | Regexp::MULTILINE)
p "Hello\nBye" =~ pattern
puts ""

# xオプションを使うと、半角スペースや改行文字が無視され、#を使って正規表現中にコメントが書ける
pattern = %r!
    \d{3}   # 郵便番号の先頭3桁
    -       # 区切り文字のハイフン
    \d{4}   # 郵便番号の末尾4桁
!x
text = '456-7890'
p text =~ pattern

pattern = <<'TEXT'
    \d{3}   # 郵便番号の先頭3桁
    \ # 半角スペース
    \d{4}   # 郵便番号の末尾4桁
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
p '123 4567' =~ regexp
puts ""


puts "-----（組み込み変数でマッチの結果を取得する）"
text = '私の誕生日は1978年7月17日です。'
text =~ /(\d+)年(\d+)月(\d+)日/
p $~    # MatchDataオブジェクトを取得
p $&    # マッチした部分全体を取得
p $2    # ２番目のキャプチャを取得
p $+    # 最後のキャプチャを取得
puts ""


puts "-----（組み込み変数を書き換えないmatch?メソッド）"
$~ = nil
Regexp.last_match = nil
text = '1978年7月17日'
p text.match?(/(\d+)年(\d+)月(\d+)日/)
p $~
p Regexp.last_match
puts ""
