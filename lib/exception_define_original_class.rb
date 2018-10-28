class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError.new("無効な国名です。", country)
  end
end

print 'Country?: '
country = gets.chomp.to_sym

begin
  p currency_of(country)
rescue NoCountryError => e
  puts e.message
  puts e.country
end
