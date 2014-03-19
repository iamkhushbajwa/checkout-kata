require 'checkout'

describe Checkout do
	it "knows the total when buying A & B" do
		checkout = Checkout.new([:a,:b])
		expect(checkout.total).to eq(80)
	end

	it "can be initialised with a basket" do
		checkout = Checkout.new([:a,:b])
		expect(checkout.basket).to eq ([:a,:b])
	end
end