ITEMS = {
  :a => [50,[3,130]],
  :b => [30,[2,45]],
  :c => [20],
  :d => [15]
}

class Checkout
  attr_reader :basket

  def initialize(basket)
    @basket = basket
  end

  def total
    prices = basket.map { |sku| ITEMS[sku][0]}
    prices.inject(0){|sum, x| sum + x }
  end

end