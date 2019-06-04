require './money'
class Franc < Money
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(other)
    amount == other.amount
  end
end
