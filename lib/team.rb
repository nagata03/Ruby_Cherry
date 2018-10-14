require_relative '../lib/deep_freezable.rb'

class Team
  extend DeepFreezable

  COUNTRIES = deep_freezable(['Japan', 'US', 'India'])
end
