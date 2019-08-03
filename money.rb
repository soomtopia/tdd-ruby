require './dollar'
class Money
  attr_accessor :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end
  
  def ==(other)
    (amount == other.amount) && (currency == other.currency)
  end

  def self.dollar(amount)
    Money.new(amount, :USD)
  end

  def self.franc(amount)
    Money.new(amount, :CHF)
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def +(other)
    Money.new(amount + other.amount, currency)
  end
end
