class Pair 
  attr_accessor :from, :to
  def initialize(from, to)
    @from = from
    @to = to
  end
  
  def ==(others)
    from == others.from && to == others.to
  end

  def hashcode
    0
  end
end