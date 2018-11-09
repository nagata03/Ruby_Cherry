require 'minitest/autorun'

class CodeFormatTest < Minitest::Test
    def test_sample
        assert_equal 'Ruby', 'ruby'.capitalize
    end
end
