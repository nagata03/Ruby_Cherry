module AwesomeApi
  # クラスインスタンス変数
  @base_url = ''
  @debug_mode = false

  # 特異メソッド
  class << self
    attr_accessor :base_url, :debug_mode
  end
end

# 設定値を保存する
AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true

# 設定値を参照する
p AwesomeApi.base_url
p AwesomeApi.debug_mode
