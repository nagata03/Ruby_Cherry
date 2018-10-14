class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)  # <=>（UFO演算子）はComparableモジュールで使われる演算子（メソッド）
    if other.is_a?(Tempo)
      # bpm同士を<=>で比較した結果を返す
      bpm <=> other.bpm
    else
      # 比較できない場合はnilを返す
      nil
    end
  end
end


t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

p t_120 <=> t_180 # 負の整数
p t_120 < t_180 # true
p t_120 >= t_180  # false
p t_120 == t_180  # false

# テンポの昇順で要素を並び替える
tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
# sortメソッドの内部では並び替えの際に<=>演算子が使われる
p tempos.sort