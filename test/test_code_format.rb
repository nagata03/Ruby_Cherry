require 'minitest/autorun'

class CodeFormatTest < Minitest::Test
    def test_sample
        assert_equal 'RUBY', 'ruby'.capitalize
    end
end
