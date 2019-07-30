require './dollar'
class Money
  attr_accessor :amount

  def ==(other)
    money = other
    (amount == money.amount) && (self.class == money.class)
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end
end
