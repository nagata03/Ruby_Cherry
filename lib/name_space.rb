module Baseball
  class Second
    def initialize(player_name, uniform_number)
      @player_name = player_name
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

class Baseball::First
  def initialize(player_name, uniform_number, power)
    @player_name = player_name
    @uniform_number = uniform_number
    @power = power
  end
end

baseball_second = Baseball::Second.new('Alice', 1)
clock_second = Clock::Second.new(5)
baseball_first = Baseball::First.new('Bob', 3, 150)

p baseball_second
p clock_second
p baseball_first
