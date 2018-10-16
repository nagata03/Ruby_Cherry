module Loggable
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end
  end
end

puts '-----モジュールに特異メソッドを定義して呼び出す場合-----'
Loggable.log('Hello, singular!')
puts ''


module Hello
  def hello(name)
    puts "Hello, #{name}!"
  end

  # helloメソッドをミックスインとしても特異メソッドとしても使えるようにする
  module_function :hello
end

puts '-----モジュールの特異メソッドとしてhelloメソッドを呼び出す-----'
Hello.hello('Taro')
puts ''


class Member
  include Hello

  def hit
    # includeしたHelloモジュールのhelloメソッドを呼び出す
    hello('member')
    'hit!!'
  end
end

puts '-----ミックスインとしてhelloメソッドを呼び出す-----'
member = Member.new
member.hit
puts ''


module Title
  PREFIX = '[Title]'.freeze

  def title(text)
    puts "#{PREFIX} #{text}"
  end
end

puts '-----モジュールの定数を参照する-----'
puts Title::PREFIX
puts ''
