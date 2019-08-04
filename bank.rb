class Bank
  def reduce(source, to)
    return source  if source.class == Money

    sum = source
    sum.reduce(to)
  end
end