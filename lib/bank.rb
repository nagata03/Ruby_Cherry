require_relative '../lib/deep_freezable.rb'

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freezable({ Japan: 'yen', US: 'dollar', India: 'rupee' })
end
