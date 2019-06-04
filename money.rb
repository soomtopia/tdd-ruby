class Money
  attr_accessor :amount

  def ==(other)
    money = other
    amount == money.amount
  end
end
