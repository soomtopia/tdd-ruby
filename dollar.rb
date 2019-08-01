require './money'
class Dollar < Money
  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.dollar(amount * multiplier, currency)
  end
end
