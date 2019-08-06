class Bank
  def reduce(source, to)
    source.reduce(self, to)
  end

  def rate(from, to)
    (from == :CHF && to == :USD) ? 2 : 1
  end
end