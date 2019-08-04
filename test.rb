# example
require 'test/unit'
require './dollar'
require './money'
require './franc'
require './bank'
class DollarTests < Test::Unit::TestCase
  def test_multiplication
    five = Money.dollar(5)
    assert_equal(Money.dollar(10).amount, five.times(2).amount)
    assert_equal(Money.dollar(15).amount, five.times(3).amount)
  end

  def test_equality
    assert_true(Money.dollar(5) == Money.dollar(5))
    assert_false(Money.dollar(5) == Money.dollar(6))
    assert_false(Money.franc(5) == Money.dollar(5))
  end

  def test_franc_multiplication
    five = Money.franc(5)
    assert_equal(Money.franc(10).amount, five.times(2).amount)
    assert_equal(Money.franc(15).amount, five.times(3).amount)
  end

  def test_currency
    assert_equal(:USD, Money.dollar(1).currency)
    assert_equal(:CHF, Money.franc(1).currency)
  end

  def test_simple_addition
    five = Money.dollar(5)
    sum = five + five
    bank = Bank.new()
    reduced = bank.reduce(sum, :USD)
    assert_equal(Money.dollar(10), reduced)
  end

  def test_plus_returns_sum
    five = Money.dollar(5)
    sum = five + five
    assert_equal(five, sum.augend)
    assert_equal(five, sum.addend)
  end

end