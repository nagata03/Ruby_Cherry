module DeepFreezable
  def deep_freezable(array_or_hash)
    case array_or_hash
    # array_or_hashが配列の場合
    when Array  # Array === array_or_hash の結果を評価する
      # 配列の各要素をfreeze
      array_or_hash.each do |element|
        element.freeze
      end
    # array_or_hashがハッシュの場合
    when Hash
      # ハッシュの各要素をfreeze
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    # 配列orハッシュ自身をfreeze
    array_or_hash.freeze
  end
end
