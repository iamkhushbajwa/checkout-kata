ITEMS = {
  :a => [50,[3,130]],
  :b => [30,[2,45]],
  :c => [20],
  :d => [15]
}

class Checkout
  attr_accessor :basket

  def initialize(basket)
    @basket = basket
  end

  def total
    prices = offers_qualified + basket.map { |sku| ITEMS[sku][0]}
    prices.inject(0){|sum, x| sum + x }
  end

  def offers_qualified
    ITEMS.map{|sku,details|
      if details.count > 1
        item_count = basket.count(sku)
        items_to_qualify = details[1][0]
        price_of_offer = details[1][1]
        if item_count >= items_to_qualify
          items_to_qualify.times{ @basket -= [sku]}
          price_of_offer
        end
      end
    }.compact
  end

end