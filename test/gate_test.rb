require 'minitest/autorun'
require_relative '../lib/gate.rb'
require_relative '../lib/ticket.rb'

class GateTest < Minitest::Test
    def setup
        @umeda = Gate.new(:umeda)
        @juso = Gate.new(:juso)
        @mikuni = Gate.new(:mikuni)
    end

    def test_umeda_to_juso_when_fare_is_enough
        # 150円の切符を購入する
        # 梅田で入場し、十三で出場する
        # 期待する結果：出場できる
        ticket = Ticket.new(150)
        @umeda.enter(ticket)
        assert @juso.exit(ticket)
    end

    def test_umeda_to_mikuni_when_fare_is_not_enough
        # 150円の切符を購入する
        # 梅田で入場し、三国で出場する
        # 期待する結果：出場できない
        ticket = Ticket.new(150)
        @umeda.enter(ticket)
        refute @mikuni.exit(ticket)
    end

    def test_umeda_to_mikuni_when_fare_is_enough
        ticket = Ticket.new(190)
        @umeda.enter(ticket)
        assert @mikuni.exit(ticket)
    end

    def test_juso_to_mikuni_when_fare_is_enough
        ticket = Ticket.new(150)
        @juso.enter(ticket)
        assert @mikuni.exit(ticket)
    end
end
