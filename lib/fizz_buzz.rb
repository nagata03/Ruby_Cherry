def fizz_buzz(num)
    if num % 15 == 0
        'FizzBuzz'
    elsif num % 5 == 0
        'Buzz'
    elsif num % 3 == 0
        'Fizz'
    else
        num.to_s
    end
end

#for i in 1..30
#    puts fizz_buzz(i)
#end

# テスト
require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
    def test_fizz_buzz
        assert_equal '1', fizz_buzz(1)
        assert_equal '2', fizz_buzz(2)
        assert_equal 'Fizz', fizz_buzz(3)
        assert_equal '4', fizz_buzz(4)
        assert_equal 'Buzz', fizz_buzz(5)
        assert_equal 'Fizz', fizz_buzz(6)
        assert_equal 'FizzBuzz', fizz_buzz(15)
    end
end
