class Money
  attr_accessor :amount

  def ==(other)
    money = other
    (amount == money.amount) && (self.class == money.class)
  end
end
