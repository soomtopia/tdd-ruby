require './money'
class Franc < Money
  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.franc(amount * multiplier, currency)
  end
end
