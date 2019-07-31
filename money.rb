require './dollar'
class Money
  attr_accessor :amount, :currency

  def ==(other)
    money = other
    (amount == money.amount) && (self.class == money.class)
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount, :CHF)
  end
end
