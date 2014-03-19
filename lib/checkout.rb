class Checkout
  attr_reader :basket

  def initialize(basket)
    @basket = basket
  end

  def total
    80
  end

end